using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web.UI;
//
using ZhiAiWang.BLL;
namespace ZhiAiWang.UI.Admin
{
    /// <summary>
    /// UserStopHandler 的摘要说明
    /// </summary>
    public class UserStopHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            int id=Convert.ToInt32( context.Request["id"]);
            string email=context.Request["email"];
            if (UserInfoManager.UpdateUserState(1,id) >= 1)
            {
                string emailContent = EmailManage.selectEmail().Rows[0]["emailContent"].ToString();//邮件内容
                string smtpa = EmailManage.selectEmail().Rows[0]["smtp"].ToString();//smtp服务器
                string emaliUid = EmailManage.selectEmail().Rows[0]["emailUid"].ToString();//邮箱账号
                string emailPwd = EmailManage.selectEmail().Rows[0]["emailPwd"].ToString();//邮箱密码
                string emailName = EmailManage.selectEmail().Rows[0]["emailName"].ToString();//发件名称
                SmtpClient smtp = new SmtpClient();
                smtp.Host = smtpa;         //smtp服务器名称
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential(emaliUid, emailPwd);  //发送人的登录名和密码
                MailAddress from = new MailAddress(emaliUid, emailName, Encoding.UTF8);//初始化发件人  
                MailAddress to = new MailAddress(email, "", Encoding.UTF8);//初始化收件人 
                MailMessage message = new MailMessage(from, to);
                message.Subject = emailName;//标题
                message.SubjectEncoding = Encoding.UTF8;
                message.Body = emailContent;//内容
                message.BodyEncoding = Encoding.UTF8;
                message.IsBodyHtml = true;
                smtp.Send(message);
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