using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//
using ZhiAiWang.BLL;
using Newtonsoft.Json;
using System.Data;
namespace ZhiAiWang.UI.Admin
{
    /// <summary>
    /// SelectUserInfoAll 的摘要说明
    /// </summary>
    public class SelectUserInfoAll : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            DataTable dt = UserInfoManager.SelectUserInfoAll();
            string json = JsonConvert.SerializeObject(dt);
            context.Response.Write(json);
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