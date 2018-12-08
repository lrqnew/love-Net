using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhiAiWang.UI
{
    public partial class PhotoWall : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              
                DatasBind(sql);
            }
        }
        string sql = "select * from UserInfo";
        private void DatasBind( string  sql)
        {
            DataTable dt = SQLHelper.Query(sql).Tables[0];


            this.AspNetPager1.RecordCount = dt.Rows.Count;
            PagedDataSource pds = new PagedDataSource();
            pds.AllowPaging = true;
            pds.PageSize = AspNetPager1.PageSize;
            pds.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
            pds.DataSource = dt.DefaultView;
            this.DataList1.DataSource = pds;
            this.DataList1.DataBind();
        }
        protected void AspNetPager1_PageChanged(object sender, EventArgs e)
        {
            DatasBind(sql);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            DatasBind(sql);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string sql1 = "select * from UserInfo where gender='男'";
            DatasBind(sql1);
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

            string sql2 = "select * from UserInfo where gender='女'";
            DatasBind(sql2);
        }
    }
}