<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Say hello.aspx.cs" Inherits="ZhiAiWang.UI.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            font-family: 'Microsoft YaHei';
            background: url(C:\Users\user\Desktop\Msg\Msg\images\message_02.jpg);
        }
    
        ul li {
            list-style: none;
        }
        #all {
            margin-top:20px;
        }
        .mse a {
            text-decoration: none;
            color: #ABCDEF;
        }

        .list:hover {
            background: #808080;
            color:#fff;
        }
         .list:hover a{
            background: #808080;
            color:#fff;
        }
        .commentList .item {
            list-style: none outside none;
            margin: 1.6rem 20px 0;
        }

        .commentList .avatar {
            border: 1px solid transparent;
            float: left;
        }

        .comment-main {
            position: relative;
            margin-left: 64px;
            border: 1px solid #dedede;
            border-radius: 2px;
        }

            .comment-main:before, .comment-main:after {
                position: absolute;
                top: 11px;
                left: -16px;
                right: 100%;
                width: 0;
                height: 0;
                display: block;
                content: " ";
                border-color: transparent;
                border-style: solid solid outset;
                pointer-events: none;
            }

            .comment-main:before {
                border-right-color: #dedede;
                border-width: 8px;
            }

            .comment-main:after {
                border-width: 7px;
                border-right-color: #f8f8f8;
                margin-top: 1px;
                margin-left: 2px;
            }

        .comment-header {
            padding: 10px 15px;
            background: #f8f8f8;
            border-bottom: 1px solid #eee;
        }

        .comment-title {
            margin: 0 0 8px 0;
            font-size: 1.6rem;
            line-height: 1.2;
        }

        .comment-meta {
            font-size: 13px;
            color: #999;
            line-height: 1.2;
        }

            .comment-meta a {
                color: #999;
            }

        .comment-author {
            font-weight: 700;
            color: #999;
        }

        .comment-body {
            padding: 15px;
            overflow: hidden;
        }

            .comment-body > :last-child {
                margin-bottom: 0;
            }

        .commentList .comment-flip .avatar {
            float: right;
        }

        .comment-flip .comment-main {
            margin-left: 0;
            margin-right: 64px;
        }

            .comment-flip .comment-main:before {
                border-left-color: #dedede;
                border-right-color: transparent;
            }

            .comment-flip .comment-main:before, .comment-flip .comment-main:after {
                left: 100%;
                position: absolute;
                right: -16px;
            }

            .comment-flip .comment-main:after {
                border-left-color: #f8f8f8;
                border-right-color: transparent;
                margin-left: auto;
                margin-right: 2px;
            }
    </style>
    <form runat="server">
    <div id="all">
        <div style="width: 80%; box-shadow:0 5px 5px 0 RGB(219,216,215);  height: 800px; margin: auto; ">
            <div style="width: 30%; height: 100%; background:#f8f8f8; float: left;">
                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                   
                        <div style="width: 100%;  float: left; display: block;" class="list">
                            <div style="width: 35%;  height: 100%; float: left;">
                                <img style="width: 80px; height: 80px; border-radius: 50%" src="images/header/<%#Eval("headImgUrl") %>" />
                            </div>
                            <br />
                            <span><a href="#"><%#Eval("petname") %></a> </span>
                            <br />
                            <span class="mse"> <asp:LinkButton ID="LinkButton1" CommandArgument='<%#Eval("helUserIDHello") %>' CommandName="requ" runat="server"> <%#Eval("helloState").ToString()=="True"?"查看消息记录":"您有未读消息,快去查看吧！" %> </asp:LinkButton></span>
                            <asp:LinkButton ID="LinkButton2" style="display:block;float:right; padding:0px 5px"  CommandArgument='<%#Eval("helUserIDHello") %>' CommandName="del"  runat="server"><img style="width:30px; height:30px;" src="images/删除.png" /></asp:LinkButton>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div style="width: 70%; background:RGB(242,242,242); height: 100%;float: right;">
                <div id="top" style="width: 100%; overflow:auto; height: 80%;">
                    <asp:Repeater ID="Repeater2" runat="server">
                        <HeaderTemplate>
                            <ul class="commentList">
                        </HeaderTemplate>
                        <ItemTemplate>
                              <li class="item cl"><a href="#"><i class="avatar size-L radius">
                            <img alt="" style="width: 80px; height: 80px; margin-left:-25px; border-radius: 50%"  src="images/user/<%#Eval("headImgUrl") %>"></i></a>
                            <div class="comment-main">
                                <header class="comment-header">
                                    <div class="comment-meta">
                                        <a class="comment-author" href="#"><%# Eval("petname") %></a> 向你打招呼
         
                                    </div>
                                </header>
                                <div class="comment-body">
                                    <p><a href="#">@</a>       <%# Eval("helConContent") %></p>
                                </div>
                            </div>
                        </li>
                        </ItemTemplate>
                        <FooterTemplate>
                               </ul>
                        </FooterTemplate>
                    </asp:Repeater>
                    
                      
                </div>
                <div id="bottom" style="width: 100%; height: 20%; ">
                </div>
            </div>
        </div>
            </div>
        </form>
</asp:Content>
