using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhiAiWang.UI.Admin
{
    public partial class TakesActivit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                load();
            }
        }
        void load()
        {
            string sql = string.Format("select UserInfo.userId,UserInfo.phone,UserInfo.name,UserInfo.gender,UserInfo.age,UserInfo.email,ActivitiesInfo.activitiesTit,ActivitiesInfo.activitiesContent,ActivitiesInfo.activitiesTime,ActivitiesInfo.activitiesPic,ActivitiesInfo.activitiesAddress,ActivitiesInfo.Moneys from Registration,UserInfo,ActivitiesInfo  where Registration.userID=UserInfo.userId and Registration.activitiesID=ActivitiesInfo.activitiesID");
            SQLHelper.Query(sql);
            DataSet ds = SQLHelper.Query(sql);
            DataTable dt = ds.Tables[0];

            this.Repeater1.DataSource = dt;
            this.Repeater1.DataBind();
        }
    }
}