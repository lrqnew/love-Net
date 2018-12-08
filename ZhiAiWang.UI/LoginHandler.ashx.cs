using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ZhiAiWang.BLL;
using System.Web.SessionState;
using ZhiAiWang.DAL;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
namespace ZhiAiWang.UI
{
    /// <summary>
    /// LoginHandler 的摘要说明
    /// </summary>
    public class LoginHandler : IHttpHandler,IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string uid=context.Request["uid"];
            string pwd =FormsAuthentication.HashPasswordForStoringInConfigFile( context.Request["pwd"].Trim(),"md5");
            if (UserInfoManager.Login(uid, pwd))
            {
                context.Session["uid"] = UserInfoManager.Session(uid, pwd).Rows[0]["petname"];
                context.Session["id"] = UserInfoManager.Session(uid, pwd).Rows[0]["userId"];
                context.Session["tel"] = UserInfoManager.Session(uid, pwd).Rows[0]["phone"];
                context.Session["head"] = UserInfoManager.Session(uid, pwd).Rows[0]["headImgUrl"];
                context.Session["Sex"] = UserInfoManager.Session(uid, pwd).Rows[0]["gender"];
                context.Session["birthday"] = UserInfoManager.Session(uid, pwd).Rows[0]["birthday"];
                context.Session["member"] = UserInfoManager.Session(uid, pwd).Rows[0]["member"];
                context.Response.Write(0);
            }
            else
            {
                context.Response.Write(1);
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