using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZhiAiWang.DAL;
namespace ZhiAiWang.UI.admin
{
    public partial class article_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            load();
            count();
            }
            
  
        }
        void load()
        {
            string sql = string.Format("select * from ActivitiesInfo");
            SQLHelper.Query(sql);
            DataSet ds = SQLHelper.Query(sql);
            DataTable dt = ds.Tables[0];

            this.AspNetPager1.RecordCount = dt.Rows.Count;
            PagedDataSource pds = new PagedDataSource();
            pds.AllowPaging = true;
            pds.PageSize = AspNetPager1.PageSize;
            pds.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
            pds.DataSource = dt.DefaultView;
            this.Repeater1.DataSource = pds;
            this.Repeater1.DataBind();
        }
        void count()
        {
            string sql = string.Format("select COUNT(activitiesID) from ActivitiesInfo");
            SQLHelper.Query(sql);
            DataSet ds = SQLHelper.Query(sql);
            DataTable dt = ds.Tables[0];
            string count = dt.Rows[0][0].ToString();//活动总数量
            this.Label1.Text = count;
        }

        protected void AspNetPager1_PageChanged(object sender, EventArgs e)
        {
            load();
        }
    }
}