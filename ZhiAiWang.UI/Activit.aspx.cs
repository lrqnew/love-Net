using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZhiAiWang.BLL;
using ZhiAiWang.DAL;
namespace ZhiAiWang.UI
{
    public partial class Activit : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DatasBind();
            }
        }

        private void DatasBind()
        {
            string sql = "select activitiesID , activitiesPic,Moneys , activitiesTit, activitiesContent," +
                @" activitiesAddress, inCount, CONVERT(varchar(10),activitiesTime,120) as" +
                @" activitiesTime from ActivitiesInfo";
            //DataTable dt = DBHelper.Instance().ExecuteSqlOrProc(sql, null);
            SQLHelper.Query(sql);
            DataSet ds = SQLHelper.Query(sql);
            DataTable dt = ds.Tables[0];

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
            DatasBind();
        }   
    }
}