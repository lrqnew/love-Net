using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//
using ZhiAiWang.Model;
using ZhiAiWang.BLL;
using System.Web.Security;
namespace ZhiAiWang.UI
{
    /// <summary>
    /// RegesterHandler 的摘要说明
    /// </summary>
    public class RegesterHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            /// <summary>
            /// 注册
           /// </summary>
            string sex = context.Request["gende"];
            string birthday = context.Request["birthday"];
            string address = context.Request["country"] + "-" + context.Request["province"] + "-" + context.Request["city"];
            string hunyin = context.Request["hunyin"];
            int hight =Convert.ToInt32( context.Request["hight"]);
            string education = context.Request["education"];
            string salary =context.Request["salary"];
            string mobile = context.Request["mobile"];
            string email = context.Request["email"];
            string password =FormsAuthentication.HashPasswordForStoringInConfigFile( context.Request["password"].Trim(),"md5");
            string nickname = context.Request["nickname"];
            UserInfo user = new UserInfo(nickname, sex, education, hight, salary, hunyin, mobile, password, address, birthday, email);
            if(UserInfoManager.Register(user)==1)
            {
                //context.Response.Write("<script>alert('注册成功！')</script>");
                context.Response.Redirect("login.aspx");
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