using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Data;
namespace ZhiAiWang.UI
{
    /// <summary>
    /// applylovers 的摘要说明
    /// </summary>
    public class applylovers : IHttpHandler,IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string a = context.Session["id"].ToString();
            string selectApply = string.Format("select * from Lovers where userID='{0}' and apply=1", context.Session["id"]);
            DataSet ds = SQLHelper.Query(selectApply);
            DataTable dt = ds.Tables[0];
            if (dt.Rows.Count >= 1)
            {
                context.Response.Write(0);
            }
            else
            {
                string sql = string.Format("insert into Lovers values('{0}','1','0')", a);
                if (SQLHelper.ExecuteSql(sql) == 1)
                {
                    context.Response.Write(2);
                }
                else
                {
                    context.Response.Write(1);
                }
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