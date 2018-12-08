using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;

namespace ZhiAiWang.UI
{
    /// <summary>
    /// DEmo 的摘要说明
    /// </summary>
    public class DEmo : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            DataTable dt = SQLHelper.Query("select top 4 * from HelloContent order by newid()").Tables[0];
            string json = Dtb2Json(dt);
            context.Response.Write(json);
        }
        private string Dtb2Json(DataTable dtb)
        {
            JavaScriptSerializer jss = new JavaScriptSerializer();
            ArrayList dic = new ArrayList();
            foreach (DataRow row in dtb.Rows)
            {
                Dictionary<string, object> drow = new Dictionary<string, object>();
                foreach (DataColumn col in dtb.Columns)
                {
                    drow.Add(col.ColumnName, row[col.ColumnName]);
                }
                dic.Add(drow);
            }
            return jss.Serialize(dic);
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