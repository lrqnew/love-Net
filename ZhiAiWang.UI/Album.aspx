<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Album.aspx.cs" Inherits="ZhiAiWang.UI.Album1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/screen.css" rel="stylesheet" />
<link href="css/ma5gallery.css" rel="stylesheet" type="text/css">
    <script src="js/jquery.js"></script>
 
<script src="js/ma5gallery.js"></script>
<script src="js/functions.js"></script>
    <section class="site-header container">
	
		<div class="ma5-gallery">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <figure class="gallery-item">
				<img src="images/gerenzhongxin/<%#Eval("pictureUrl") %>" alt="">
				<figcaption>我的相册</figcaption>
               
			</figure>
                </ItemTemplate>
            </asp:Repeater>
			
	</div>
</section>


</asp:Content>
