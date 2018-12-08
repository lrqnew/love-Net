<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ZhiAi404.aspx.cs" Inherits="ZhiAiWang.UI.ZhiAi404" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/forms.css" rel="stylesheet" />
    <style>
        .foot {
            margin-top:140px;
            margin-left:100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
        <div style="height: 300px; background-color: #ffffff; margin-top: -120px;">
            
            <div class="register" style="margin-top: 115px;">
                <div class="mains">
                    <div class="tzs">
                        <img src="images/lyogm281.jpg" />
                        <div class="title">很抱歉，您访问的页面不存在...</div>
                        <div class="js">系统将在<span id="show">1</span> 秒后自动返回上一页面。如果没有自动返回，请<a href="#">点击此处</a>手动跳转</div>
                        <div class="clear" ></div>
                    </div>
                </div>
                <script type="text/javascript">var t = 5;//设定跳转的时间 
                    setInterval("refer()", 1000); //启动1秒定时 
function refer(){  
    if(t==0){ 
        location="/index.aspx"; //#设定跳转的链接地址 
    } 
    document.getElementById('show').innerHTML=""+t+""; // 显示倒计时 
    t--; // 计数器递减 
    //本文转自： 
} 
                </script>

            </div>
        </div>


</asp:Content>
