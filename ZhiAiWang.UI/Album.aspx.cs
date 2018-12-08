using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhiAiWang.UI
{
    public partial class Album1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["userId"]==null)
                {
string sql = string.Format("select * from PictureInfo where  PictureInfo.userId='{0}'and PictureInfo.picstar=1",Session["id"]);
                DataTable dt = SQLHelper.Query(sql).Tables[0];
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
                }
                else
                {
                    string sql = string.Format("select * from PictureInfo where  PictureInfo.userId='{0}'and PictureInfo.picstar=1",Request["userId"]);
                    DataTable dt = SQLHelper.Query(sql).Tables[0];
                    Repeater1.DataSource = dt;
                    Repeater1.DataBind();
                }
            }
        }
    }
}