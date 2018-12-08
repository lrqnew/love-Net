<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TakeActive.aspx.cs" Inherits="ZhiAiWang.UI.TakeActive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style2.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
        <div class="ac_main">
            <p class="myhd">我的活动<a href="#"><!--查看所有活动--></a></p>
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                 <ItemTemplate>
            <div class="ac_list" id="events">
                <div class="ac_list_sub">
                    <div class="sub_img"><a href="#">
                        <img alt="" src="/images/newActit/<%#Eval("activitiesPic") %>" />
                        

                    </a></div>
                    <div class="sub_tit" style="font-size: 24px; height: 80px; overflow: hidden">
                        <%# Eval("activitiesTit") %>
                        </div>
                    <!--报名和关注的-->
                    <div class="sub_main">
                        <ul style="padding: 0 20px 0 0;">
                            
                            <li style="background: url(images/Acivit/ac_bm_icon1.jpg) no-repeat left center; padding-left: 25px; overflow: hidden; height: 27px;"><%# Eval("activitiesTime") %></li>
                            <li style="background: url(images/Acivit/ac_bm_icon2.jpg) no-repeat left center; padding-left: 25px; overflow: hidden; height: 27px;"><%# Eval("activitiesAddress") %></li>
                        </ul>
                        <div class="bm">
                            <div class="wybml"><a href="javascript:;" style="background: url(/public/home/images/ybm_btn.jpg)"></a></div>
                            <div class="rs">已报名：<span style="color: #dd506f"><%# Eval("inCount") %></span>人</div>
                        </div>
                        <!--       <p class="ck"><a href="/event/detail?id=890">查看活动详情</a></p> //查看详情暂时去掉 -->
                        <div class="gz gz2" data-id="890">
                            <p>取消关注</p>
                        </div>
                    </div>
                    <div class="clear" style="clear: both; height: 20px"></div>
                </div>
            </div>
                     </ItemTemplate>
                </asp:DataList>
            <div style="clear: both"></div>
            <div style="text-align: center; margin: 0 auto;" id="page1"></div>
        </div>
    </form>
</asp:Content>
