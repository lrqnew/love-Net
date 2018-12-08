using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using ZhiAiWang.BLL;
using ZhiAiWang.Model;
namespace ZhiAiWang.UI.Admin
{
    /// <summary>
    /// EmaiSetlHandler 的摘要说明
    /// </summary>
    public class EmaiSetlHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string emailContent = context.Request["emailContent"];//邮件内容
            string smtpa = context.Request["smtp"];//smtp服务器
            string emailUid = context.Request["emailUid"];//邮箱账号
            string emailPwd = context.Request["emailPwd"];// 邮箱密码
            string emailName = context.Request["emailName"];//发件名称

            Email email = new Email();
            email.emailContent = emailContent;
            email.smtp = smtpa;
            email.emailUid = emailUid;
            email.emailPwd = emailPwd;
            email.emailName = emailName;
           
            if (EmailManage.UpdateEmail(email) >= 1)
            {
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