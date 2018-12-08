using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//
using Newtonsoft.Json;
using ZhiAiWang.Model;
using ZhiAiWang.BLL;
using System.Data;
namespace ZhiAiWang.UI.Admin
{
    /// <summary>
    /// PersonalHandler 的摘要说明
    /// </summary>
    public class PersonalHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            int id=Convert.ToInt32( context.Request["id"]);
             DataTable dt= UserInfoManager.SelectPerSonalInfoByIDReturnTable(id);
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