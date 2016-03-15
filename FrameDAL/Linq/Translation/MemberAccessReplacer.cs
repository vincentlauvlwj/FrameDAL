using System;
using System.Collections.ObjectModel;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Reflection;

namespace FrameDAL.Linq.Translation
{
    public class MemberAccessReplacer : ExpressionVisitor
    {
        private Dictionary<ParameterExpression, Expression> map;

        public static Expression Replace(Expression expression, ParameterExpression paramExpr, Expression projector)
        {
            return Replace(expression, paramExpr, projector, null, null);
        }

        public static Expression Replace(
            Expression expression, 
            ParameterExpression paramExpr0, 
            Expression projector0,
            ParameterExpression paramExpr1,
            Expression projector1)
        {
            MemberAccessReplacer replacer = new MemberAccessReplacer();
            replacer.map = new Dictionary<ParameterExpression, Expression>();
            if(paramExpr0 != null) replacer.map[paramExpr0] = projector0;
            if(paramExpr1 != null) replacer.map[paramExpr1] = projector1;
            return replacer.Visit(expression);
        }

        protected override Expression VisitParameter(ParameterExpression node)
        {
            Expression e;
            if(map.TryGetValue(node, out e))
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
