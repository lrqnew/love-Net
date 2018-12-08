﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//
using ZhiAiWang.BLL;
namespace ZhiAiWang.UI
{
    /// <summary>
    /// DeleteMesgHande 的摘要说明
    /// </summary>
    public class DeleteMesgHande : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            int id = Convert.ToInt32(context.Request["id"]);

            if (CircleOfFriendsManager.DeleteMasgById(id)>= 1)
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