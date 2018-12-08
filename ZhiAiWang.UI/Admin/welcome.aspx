<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="ZhiAiWang.UI.Admin.welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
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
<title>我的桌面</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="page-container">
	<p class="f-20 text-success">欢迎使用致爱网.admin <span class="f-14">v1.0</span></p>
	<p>登录次数：<%=Application["Sum"] %> </p>
	<p>登录时间：<%=DateTime.Now.ToString() %></p>
        
	<%--<table class="table table-border table-bordered table-bg">
		<thead>
			<tr>
				<th colspan="7" scope="col">信息统计</th>
			</tr>
			<tr class="text-c">
				<th>统计</th>
				<th>资讯库</th>
				<th>图片库</th>
				<th>产品库</th>
				<th>用户</th>
				<th>管理员</th>
			</tr>
		</thead>
		<tbody>
			<tr class="text-c">
				<td>总数</td>
				<td>92</td>
				<td>9</td>
				<td>0</td>
				<td>8</td>
				<td>20</td>
			</tr>
			<tr class="text-c">
				<td>今日</td>
				<td>0</td>
				<td>0</td>
				<td>0</td>
				<td>0</td>
				<td>0</td>
			</tr>
			<tr class="text-c">
				<td>昨日</td>
				<td>0</td>
				<td>0</td>
				<td>0</td>
				<td>0</td>
				<td>0</td>
			</tr>
			<tr class="text-c">
				<td>本周</td>
				<td>2</td>
				<td>0</td>
				<td>0</td>
				<td>0</td>
				<td>0</td>
			</tr>
			<tr class="text-c">
				<td>本月</td>
				<td>2</td>
				<td>0</td>
				<td>0</td>
				<td>0</td>
				<td>0</td>
			</tr>
		</tbody>
	</table>--%>
	<table class="table table-border table-bordered table-bg mt-20">
		<thead>
			<tr>
				<th colspan="2" scope="col">服务器信息</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th width="30%">服务器计算机名</th>
				<td>
                    <span id="lbServerName">
                       <%= ZhiAiWang.UI.Admin.Servera.GetServerName() %>
                    </span>

				</td>
			</tr>
			<tr>
				<td>服务器IP地址</td>
				<td> 127.0.0.1</td>
			</tr>
			<tr>
				<td>服务器域名</td>
				<td><%= ZhiAiWang.UI.Admin.Servera.GetDomainName()%></td>
			</tr>
			<tr>
				<td>服务器端口 </td>
				<td><%= ZhiAiWang.UI.Admin.Servera.GetServerPort()%></td>
			</tr>
			<tr>
				<td>服务器IIS版本 </td>
				<td><%= ZhiAiWang.UI.Admin.Servera.GetServerSoftware()%></td>
			</tr>
			<tr>
				<td>本文件所在文件夹 </td>
				<td><%= ZhiAiWang.UI.Admin.Servera.GetPathTranslated()%></td>
			</tr>
			<tr>
				<td>服务器操作系统 </td>
				<td><%= ZhiAiWang.UI.Admin.Servera.GetSystemVersion()%></td>
			</tr>
			<tr>
				<td>系统所在文件夹 </td>
				<td>C:\WINDOWS\system32</td>
			</tr>
			<tr>
				<td>服务器脚本超时时间 </td>
				<td>30000秒</td>
			</tr>
			<tr>
				<td>服务器的语言种类 </td>
				<td><%= ZhiAiWang.UI.Admin.Servera.GetAcceptLanguage()%></td>
			</tr>
			<tr>
				<td>.NET Framework 版本 </td>
				<td><%= ZhiAiWang.UI.Admin.Servera.GetNetVersion()%></td>
			</tr>
			<tr>
				<td>服务器当前时间 </td>
				<td><%= ZhiAiWang.UI.Admin.Servera.ServiceTime%></td>
			</tr>

			<tr>
				<td>CPU 总数 </td>
				<td><%= ZhiAiWang.UI.Admin.Servera.GetCpuCount()%></td>
			</tr>
			<tr>
				<td>CPU 类型 </td>
				<td><%= ZhiAiWang.UI.Admin.Servera.GetCpuIdentifier()%></td>
			</tr>
			<tr>
				<td>虚拟内存 </td>
				<td>52480M</td>
			</tr>
			<tr>
				<td>当前程序占用内存 </td>
				<td><%= ZhiAiWang.UI.Admin.Servera.GetSystemLength%></td>
			</tr>
			
			<tr>
				<td>当前Session数量 </td>
				<td><%= ZhiAiWang.UI.Admin.Servera.GetSessionCount()%></td>
			</tr>
			
			
		</tbody>
	</table>
</div>
<footer class="footer mt-20">
	<div class="container">
		<p>感谢jQuery、layer、laypage、Validform、UEditor、My97DatePicker、iconfont、Datatables、WebUploaded、icheck、highcharts、bootstrap-Switch<br>
			Copyright &copy;2015-2017 H-ui.admin v3.1 All Rights Reserved.<br>
			本后台系统由<a href="http://www.h-ui.net/" target="_blank" title="H-ui前端框架">H-ui前端框架</a>提供前端技术支持</p>
	</div>
</footer>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
    </div>
    </form>
</body>
</html>
