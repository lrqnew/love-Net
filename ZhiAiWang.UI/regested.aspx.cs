using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using ZhiAiWang.Model;
namespace ZhiAiWang.UI
{
    public partial class regested : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //boy.Checked = true;
                //wh.Checked = true;
                //if (Session["data"]!=null)
                //{
                //    string a = Session["data"].ToString();
                //    if (a.Split('|')[0] == "女")
                //    {
                //        gril.Checked = true;
                //    }
                //    if (a.Split('|')[5] == "未婚")
                //    {
                //        wh.Checked = true;
                //    }
                //    else if (a.Split('|')[5] == "离异")
                //    {
                //        ly.Checked = true;
                //    }
                //    else
                //    {
                //        so.Checked = true;
                //    }
             
                }

               
            }
      
        

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('sdasdsd')</ascript>");
            //string tel = Request["yanzhenma"];
            //if (Message.message(tel, pass))
            //{
            //    Response.Write("<script>alert('发送成功')</script>");
            //}
            //else
            //{
            //    Response.Write("<script>alert('发送失败')</script>");
            //}
        }
    }
}