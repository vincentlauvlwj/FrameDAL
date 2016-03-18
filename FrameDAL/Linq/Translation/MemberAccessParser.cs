using System;
using System.Collections.ObjectModel;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Reflection;

namespace FrameDAL.Linq.Translation
{
    public class MemberAccessParser : InjectedExpressionVisitor
    {
        private Dictionary<ParameterExpression, Expression> map;

        public static Expression Parse(LambdaExpression expression, params Expression[] projectors)
        {
            MemberAccessParser parser = new MemberAccessParser();
            parser.map = expression.Parameters.Select((param, i) => new { param, i })
                .ToDictionary(x => x.param, x => projectors[x.i]);
            return parser.Visit(expression.Body);
        }

        protected override Expression VisitParameter(ParameterExpression node)
        {
            Expression e;
            if(map != null && map.TryGetValue(node, out e))
            {
                return e;
            }
            return node;
        }

        protected override Expression VisitMember(MemberExpression m)
        {
            Expression source = this.Visit(m.Expression);
            switch (source.NodeType)
            {
                case ExpressionType.Call:
                    MethodCallExpression call = (MethodCallExpression)source;
                    if (call != null && call.Method.Name == "NewDefaultProjectedObject")
                    {
                        var bindings = ((ConstantExpression)call.Arguments[0]).Value as ReadOnlyCollection<MemberBinding>;
                        for (int i = 0, n = bindings.Count; i < n; i++)
                        {
                            MemberAssignment assign = bindings[i] as MemberAssignment;
                            if (assign != null && MembersMatch(assign.Member, m.Member))
                            {
                                return assign.Expression;
                            }
                        }
                    }
                    break;
                case ExpressionType.MemberInit:
                    MemberInitExpression min = (MemberInitExpression)source;
                    for (int i = 0, n = min.Bindings.Count; i < n; i++)
                    {
                        MemberAssignment assign = min.Bindings[i] as MemberAssignment;
                        if (assign != null && MembersMatch(assign.Member, m.Member))
                        {
                            return assign.Expression;
                        }
                    }
                    break;
                case ExpressionType.New:
                    NewExpression nex = (NewExpression)source;
                    if (nex.Members != null)
                    {
                        for (int i = 0, n = nex.Members.Count; i < n; i++)
                        {
                            if (MembersMatch(nex.Members[i], m.Member))
                            {
                                return nex.Arguments[i];
                            }
                        }
                    }
                    break;
            }
            return m.Update(source);
        }

        private bool MembersMatch(MemberInfo a, MemberInfo b)
        {
            if (a == b)
            {
                return true;
            }
            if (a is MethodInfo && b is PropertyInfo)
            {
                return a == ((PropertyInfo)b).GetGetMethod();
            }
            else if (a is PropertyInfo && b is MethodInfo)
            {
                return ((PropertyInfo)a).GetGetMethod() == b;
            }
            return false;
        }
    }
}
