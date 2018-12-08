<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="article-add.aspx.cs" Inherits="ZhiAiWang.UI.admin.article_add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>活动编辑</title>
<meta name="keywords" content="H-ui.admin v3.1,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载"/>
<meta name="description" content="H-ui.admin v3.1，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。"/>
<meta name="renderer" content="webkit|ie-comp|ie-stand"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="/favicon.ico"/>
<link rel="Shortcut Icon" href="/favicon.ico" />
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
    <style>
        .pic {
            width:130px;
            height:120px;
        }
         .sc {
               background: #d86ea3; color: #fff; border-radius: 5px;padding: 8px 28px;
           }
        .btn {
            margin-top:-70px;
            margin-left:200px;
            width:150px;
            height:70px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <article class="page-container">
	<form class="form form-horizontal" id="form-article-add">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>活动标题：</label>
			<div class="formControls col-xs-8 col-sm-9">
                <asp:TextBox ID="TextBox1" placeholder="请输入活动标题...." CssClass="input-text" runat="server"></asp:TextBox>
				
			</div>
		</div><br /><br />
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">活动内容：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="abstract" id="textarea" runat="server" class="textarea"  placeholder="说点什么...最少输入10个字符"></textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
			</div>
		</div><br /><br />
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">参与人数：</label>
			<div class="formControls col-xs-8 col-sm-9">
				 <asp:TextBox ID="TextBox2" placeholder="活动参与人数" CssClass="input-text" Text="0" runat="server"></asp:TextBox>
			</div>
		</div><br /><br />
        <div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">活动费用：</label>
			<div class="formControls col-xs-8 col-sm-9">
				 <asp:TextBox ID="TextBox3" placeholder="活动参与费用" CssClass="input-text" runat="server"></asp:TextBox>
			</div>
		</div><br /><br />
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">活动时间：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input runat="server" placeholder="活动开始时间" type="text"  id="commentdatemin" name="commentdatemin" class="input-text Wdate"/>
			</div>
		</div><br /><br />
        <div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">活动地址：</label>
			<div class="formControls col-xs-8 col-sm-9">
                <asp:TextBox ID="TextBox4" placeholder="活动地址" CssClass="input-text" runat="server"></asp:TextBox>

			</div>
		</div><br /><br />
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">活动海报：</label>
            <div style="width:700px;height:230px;margin-left:293px;">
                <asp:Image ImageUrl=" " CssClass="pic" ID="pic" runat="server" />
                <br />
                <asp:FileUpload ID="fileUpload" runat="server" /><br />
                                <span><asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label></span>
                <asp:Button CssClass="sc" ID="Button2" runat="server" Text="上传" OnClick="Button2_Click" />
            </div>
		</div><br /><br />
		
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
                <asp:Button ID="Button3" CssClass="btn btn-secondary radius Hui-iconfont" runat="server" Text="&#xe632;添加活动" OnClick="Button3_Click1" />

			</div>
		</div>
	</form>
</article>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript" src="lib/webuploader/0.1.5/webuploader.min.js"></script> 
<script type="text/javascript" src="lib/ueditor/1.4.3/ueditor.config.js"></script> 
<script type="text/javascript" src="lib/ueditor/1.4.3/ueditor.all.min.js"> </script> 
<script type="text/javascript" src="lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">

</script>
    </form>
</body>
</html>
