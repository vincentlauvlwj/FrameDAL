using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

namespace ResumeFactory.Common
{
    /// <summary>
    /// 不引发异常的类型转换
    /// </summary>
    public static class DataTypeConverter
    {
        public static bool ToInt32(this object input, ref int output)
        {
            try
            {
                output = Convert.ToInt32(input);
                return true;
            }
            catch 
            {
                return false;
            }
        }

        public static int ToInt32(this object input, int defaultValue)
        {
            try
            {
                return Convert.ToInt32(input);
            }
            catch 
            { 
                return defaultValue; 
            }
        }

        public static bool ToDouble(this object input, ref double output)
        {
            try
            {
                output = Convert.ToDouble(input);
                return true;
            }
            catch 
            {
                return false;
            }
        }

        public static double ToDouble(this object input, double defaultValue)
        {
            try
            {
                return Convert.ToDouble(input);
            }
            catch 
            { 
                return defaultValue; 
            }
        }

        public static bool ToDecimal(this object input, ref decimal output)
        {
            try
            {
                output = Convert.ToDecimal(input);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public static decimal ToDecimal(this object input, decimal defaultValue)
        {
            try
            {
                return Convert.ToDecimal(input);
            }
            catch 
            {
                return defaultValue;
            }
        }

        /// <summary>
        /// 判断输入是否为整数
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        public static bool isInt(this string input) 
        {
           if( Regex.IsMatch(input, "^([0-9]{1,})$")) return true; 
           return false;
        }

        /// <summary>
        /// 判断输入是否为小数
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        public static bool isDecimal(this string input) {
            if (Regex.IsMatch(input, "^([0-9]{1,}[.][0-9]*)$"))
            return true;
            return false;
        }

        /// <summary>
        /// 判断输入是否为数字
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        public static bool isNumber(this string input){

            if (isInt(input) ||isDecimal(input))
                return true;
                return false;
        }
    }
}
