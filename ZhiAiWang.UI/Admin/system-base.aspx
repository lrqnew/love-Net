<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="system-base.aspx.cs" Inherits="ZhiAiWang.UI.Admin.system_base" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="/favicon.ico" >
<link rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<!--/meta 作为公共模版分离出去-->

<title>基本设置</title>
</head>
<body>
    	<form class="form form-horizontal" id="form1" runat="server">
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页
	<span class="c-gray en">&gt;</span>
	系统管理
	<span class="c-gray en">&gt;</span>
	基本设置
	<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<div class="page-container">

		<div id="tab-system" class="HuiTab">
			<div class="tabBar cl">
				<!--<span>基本设置</span>
				<span>安全设置</span>-->
				<span>邮件设置</span>
				<!--<span>其他设置</span>-->
			</div>
			
			<div class="tabCon">
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">邮件发送内容：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text"  class="input-text" id="content" >
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">SMTP服务器：</label>
					<div class="formControls col-xs-8 col-sm-9">
						
                        <select  class="input-text" id="smtp">
                            <option value="smtp.163.com">smtp.163.com</option>
                            <option value="smtp.qq.com">smtp.qq.com</option>
                        </select>
					</div>
				</div>
				<!--<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">SMTP 端口：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" class="input-text" value="25" id="" name="" >
					</div>
				</div>-->
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">邮箱帐号：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" class="input-text "  id="emailName" name="emailName" >
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">邮箱密码：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="password" id="email-password" value="" class="input-text">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">发件名称：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" id="email-address" class="input-text">
					</div>
				</div>
                
               <button  class="btn btn-primary radius" type="button" style="margin-left:120px;margin-top:10px;"><i class="Hui-iconfont">&#xe632;</i> 保存</button>
               
			</div>
	
		</div>
	
	
</div>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript">
    $(function () {
        $(".btn").click(function () {
           $.ajax({
                type: 'POST',
                url: 'EmaiSetlHandler.ashx',
                dataType: 'text',
               data: {
                   emailContent: $("#content").val(),
                   smtp: $("#smtp").val(),
                   emailUid: $("#emailName").val(),
                   emailPwd: $("#email-password").val(),
                   emailName: $("#email-address").val()
                },
               success: function (data) {

                    if (data == 0) {
                        layer.msg("保存成功！");
                    }
                    else {
                         layer.msg("保存失败！");
                    }
                },
                error: function (data) {
                    console.log(data.msg);
                },
            });
     
    })
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	$("#tab-system").Huitab({
		index:0
    });
  
});
</script>
<!--/请在上方写此页面业务相关的脚本-->
      </form>
</body>
</html>
