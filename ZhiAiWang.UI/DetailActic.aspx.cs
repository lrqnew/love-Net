using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZhiAiWang.DAL;

namespace ZhiAiWang.UI
{
    public partial class DetailActic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(Request["id"].ToString());
            if (!IsPostBack)
            {
                string sql = string.Format("select activitiesID , activitiesPic,activitiesTit , activitiesContent, CONVERT(varchar(10),activitiesTime,120) as" +
                                           @" activitiesTime, activitiesAddress, inCount, Moneys 
                                              from ActivitiesInfo where activitiesID={0}", Request["id"]);
                DataTable dt = DBHelper.Instance().ExecuteSqlOrProc(sql,null);
                string pic= dt.Rows[0][1].ToString();
                string tie = dt.Rows[0][2].ToString();
                string Content = dt.Rows[0][3].ToString();
                string Time =dt.Rows[0][4].ToString();
                string Address = dt.Rows[0][5].ToString();
                string inCount = dt.Rows[0][6].ToString();
                string Moneys = dt.Rows[0][7].ToString();
                this.Time.Text = Time;
                this.Adress.Text = Address;
                this.Count.Text = inCount;
                this.img.ImageUrl = "/images/newActit/" + pic;
                this.Label1.Text = Content;
                this.title.Text = tie;
                this.Money.Text = Moneys;
                this.IDs.Text = Request["id"].ToString();
            }
        }
    }
}