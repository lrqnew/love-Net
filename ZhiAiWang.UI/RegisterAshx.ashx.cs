using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//
using ZhiAiWang.BLL;
namespace ZhiAiWang.UI
{
    /// <summary>
    /// RegisterAshx 的摘要说明
    /// </summary>
    public class RegisterAshx : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            CheckEmail(context);
            CheckPhone(context);
        }
        /// <summary>
        /// 验证邮箱是否存在
        /// </summary>
        /// <param name="context"></param>
        void CheckEmail(HttpContext context)
        { 
          string email=context.Request["name"];
          if (UserInfoManager.SelectUserInfoByEmail(email))
          {
              context.Response.Write(1);
          }
          else
          {
              context.Response.Write(0);
          }
        }
        /// <summary>
        /// 验证手机是否存在
        /// </summary>
        /// <param name="context"></param>
        void CheckPhone(HttpContext context)
        {
            string phone = context.Request["name"];
            if (UserInfoManager.SelectUserInfoByPhone(phone))
            {
                context.Response.Write(1);
            }
            else
            {
                context.Response.Write(0);
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}