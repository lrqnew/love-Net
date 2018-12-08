<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MatchMaker.aspx.cs" Inherits="LoveTheNet.MatchMaker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>红娘</title>
    <style type="text/css">
        * {
        margin:0 auto ;
        }
        #all {
        width:100%;
        height:auto;
        background:#000;
        }
            #all #banner {
            width:100%;
            height:585px;
            background:url("images/w/hnbanner.jpg") no-repeat #f00;     
            background-size:100%;        
            }
            #all #allContent {
            width:1024px;
            height:1000px;
            background:#fff;
            }
    </style>
    <script src="jQuery/jquery-3.2.1.min.js"></script>

</head>
<body>
    <div id="all">
        <header>

        </header>
        <%--广告图片--%>
            <div id="banner">
            </div>
            <%--广告图片结束--%>
        <%--页面内容--%>
        <div id="allContent">
            
            <%--广告图片下的菜单--%>
            <div id="bannerNext">
            </div>
            <%--广告图片下的菜单结束--%>
            <%--优质会员板块婚恋专家顾问--%>
            <div id="members">
            </div>
            <%--优质会员板块结束--%>
            <%--婚恋专家顾问--%>
            <div id="experts">
            </div>
            <%--婚恋专家顾问结束--%>
        </div>
        <%--页面内容结束--%>
        <footer></footer>
    </div>
    <form id="form1" runat="srever">
        <div>
        </div>
    </form>
</body>
</html>
