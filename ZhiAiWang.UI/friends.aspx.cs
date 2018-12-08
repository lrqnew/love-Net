using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using ZhiAiWang.BLL;
namespace ZhiAiWang.UI
{
    public partial class friends : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                BindDataListInfoByID();
                BindReper();
                //BindCofMesg();
                
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        void BindDataListInfoByID()
        {
            this.DataList1.DataSource = UserInfoManager.SelectInfoByID(Convert.ToInt32(Session["id"]));
            this.DataList1.DataBind();
        }
        /// <summary>
        /// 绑定消息
        /// </summary>
        void BindReper()
        {
            this.UserMesg.DataSource = CircleOfFriendsManager.SelectMesg();
            this.UserMesg.DataBind();
        }
        /// <summary>
        /// 绑定评论
        /// </summary>
        //void BindCofMesg()
        //{
        //    Repeater rep = e.Item.FindControl("Repeater2") as Repeater;
        //    this.Repeater1.DataSource = AnswerManager.SelectAnswer(1);
        //    this.Repeater1.DataBind();
        //}
        protected void UserMesg_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void CofMesg_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void UserMesg_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
        //    if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        //    {
        //        Repeater rep = e.Item.FindControl("Repeater2") as Repeater;//找到里层的repeater对象  
              
        //            rep.DataSource = AnswerManager.SelectAnswer(3);
        //            rep.DataBind();
                
                
        //    }  
        }
    }
}