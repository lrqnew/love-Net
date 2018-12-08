using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZhiAiWang.UI
{
    /// <summary>
    /// ActivitHandler 的摘要说明
    /// </summary>
    public class ActivitHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string a= context.Request["name"];
            string userid = context.Request["userid"];//用户编号
            string actid = context.Request["idss"];//活动编号
            string phone = context.Request["phone1"];//手机号
            string stature = context.Request["stature"];//身高
            string profession = context.Request["profession"];//职业
            string sql =string.Format("insert into Registration values({0},{1},'{2}','{3}','{4}')", userid, actid, phone, stature, profession);
            if (SQLHelper.ExecuteSql(sql)==1)
            {
                context.Response.Redirect("Activit.aspx");
            }
            else
            {
                //context.Response.Redirect("<script>alert('活动报名失败！')</script>");
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