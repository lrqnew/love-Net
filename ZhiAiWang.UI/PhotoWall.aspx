<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PhotoWall.aspx.cs" Inherits="ZhiAiWang.UI.PhotoWall" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/PhotoWall.css" rel="stylesheet" />
    <form runat="server">
        <style>
            .userPwl {
                float: left;
                width: 90%;
                padding: 2px;
                margin: 7px 7px;
                background: #fff;
                background-color: rgb(255, 255, 255);
                border-radius: 3px;
                position: relative;
                overflow: hidden;
                border: solid 1px #BCBCBC;
            }

                .userPwl img {
                    width: 295px;
                    height: 362px;
                }

                .userPwl:hover {
                    box-shadow: 0 0 15px #b53bbe;
                }

                .userPwl dd {
                    background: #fff;
                    margin-left: 5px;
                }

                    .userPwl dd h3 {
                        line-height: 30px;
                        font-size: 16px;
                        color: #333;
                        font-weight: 100;
                    }
            #all
            {
               width:80%;
               height:auto;
               margin:auto;
            }
        </style>
        <div id="all">
            <div class="bieda">
                <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </div>
            <div class="photo_tab">
                <ul>
                  <li> <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" runat="server" BackColor="#ED87BA" ForeColor="White">默认排序</asp:LinkButton></li>
                     <li> <asp:LinkButton ID="LinkButton2"  class="onck" OnClick="LinkButton2_Click" runat="server" BackColor="#ED87BA" ForeColor="White">只看男</asp:LinkButton></li>
                    <li> <asp:LinkButton ID="LinkButton3" OnClick="LinkButton3_Click"  runat="server" BackColor="#ED87BA" ForeColor="White">只看女</asp:LinkButton> </li>
                   
                </ul>
            </div>
            <main>
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
                    <ItemTemplate>
                        <dl class="userPwl">
                            <dt><a href="UserData.aspx?userId=<%#Eval("userId") %>">
                                    <img src="images/header/<%#Eval("headImgUrl") %>" alt="" />
                                 </a></dt>
                            <dd><h3> <%#Eval("petname")%></h3></dd>
                            <dd style="font-size: 12px;color: #666;"><%#Eval("age")%>岁,<%#Eval("address")%>,<%#Eval("major")%></dd>
                     
                        </dl>

                    </ItemTemplate>
                </asp:DataList>
              <webdiyer:AspNetPager  ID="AspNetPager1" runat="server" PageSize="20" 
                      HorizontalAlign="Center" Width="100%" 
                      meta:resourceKey="AspNetPager1" Style="font-size: 14px"
                    AlwaysShow="false" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                      PrevPageText="上一页" SubmitButtonText="Go"  SubmitButtonClass="submitBtn"
                    CustomInfoStyle="font-size:14px;text-align:left;" 
                      InputBoxStyle="width:25px; border:1px solid #999999; text-align:center; " 
                      TextBeforeInputBox="转到第" TextAfterInputBox="页 " PageIndexBoxType="TextBox" 
                      ShowPageIndexBox="Always" TextAfterPageIndexBox="页" 
                      TextBeforePageIndexBox="转到" Font-Size="14px" CustomInfoHTML="共&lt;font color='#ff0000'&gt;%PageCount%&lt;/font&gt;页，第<font color='#ff0000'>%CurrentPageIndex%</font>页" 
                      ShowCustomInfoSection="Left" CustomInfoSectionWidth="19%" 
                      PagingButtonSpacing="3px" onpagechanged="AspNetPager1_PageChanged">
</webdiyer:AspNetPager>
            </main>
     

        </div>
    </form>
</asp:Content>
