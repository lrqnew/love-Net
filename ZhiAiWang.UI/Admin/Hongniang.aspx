<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hongniang.aspx.cs" Inherits="ZhiAiWang.UI.admin.Hongniang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
<title>品牌管理</title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 产品管理 <span class="c-gray en">&gt;</span> 红娘申请管理<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<%--<div class="page-container">
	<div class="text-c">
		<form class="Huiform" method="post" action="" target="_self">
			<input type="text" placeholder="分类名称" value="" class="input-text" style="width:120px">
			<span class="btn-upload form-group">
			<input class="input-text upload-url" type="text" name="uploadfile-2" id="uploadfile-2" readonly style="width:200px">
			<a href="javascript:void();" class="btn btn-primary upload-btn"><i class="Hui-iconfont">&#xe642;</i> 上传logo</a>
			<input type="file" multiple name="file-2" class="input-file">
			</span> <span class="select-box" style="width:150px">
			&nbsp;</span><button type="button" class="btn btn-success" id="" name="" onClick="picture_colume_add(this);"><i class="Hui-iconfont">&#xe600;</i> 添加</button>
		--%></form>
	
	<%--<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a></span> <span class="r">共有数据：<strong>54</strong> 条</span> </div>--%>
	<div class="mt-20">
        <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
                <table class="table table-border table-bordered table-bg table-sort">
			<thead>
				<tr class="text-c">
					<th width="25"><input type="checkbox" name="" value=""></th>
					<th width="70">用户编号</th>
                    <th width="70">红娘申请编号</th>
					<th width="80">姓名</th>
					<th width="20">性别</th>
					<th width="50">年薪</th>
                    <th width="50">毕业院校</th>
                    <th width="50">邮箱账号</th>
                    <th width="50">红娘服务状态</th>
					<th width="100">操作</th>
				</tr>
			</thead>
            </HeaderTemplate>
            <ItemTemplate>
                <tbody>
				<tr class="text-c">
					<td><input name="" type="checkbox" value=""></td>
					<td><%#Eval("userId") %></td>
                    <td><%#Eval("LoversID") %></td>
					<td><%#Eval("name") %></td>
					<td><%#Eval("gender") %></td>
                    <td><%#Eval("salary") %></td>
					<td><%#Eval("school") %></td>
					<td class="text-l"><%#Eval("email") %></td>
					<td class="td-status"><span class="label label-success radius"><%#Eval("apply").ToString()== "True"?"已处理":"待处理" %></td>
					<td class="f-14 product-brand-manage">
                        <a style="text-decoration:none" onClick="member_stop(this,'<%#Eval("LoversID") %>')" href="javascript:;" title="待处理" >
                        <i class="Hui-iconfont">&#xe631;</i></a> 
                        <a style="text-decoration:none" onClick="member_start(this,'<%#Eval("LoversID") %>')" href="javascript:;" title="已处理">
                        <i class="Hui-iconfont">&#xe6e1;</i></a> 
					</td>
				</tr>
			</tbody>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
		
			
		
	</div>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
$('.table-sort').dataTable({
	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"aoColumnDefs": [
	  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
	  {"orderable":false,"aTargets":[0,6]}// 制定列不参与排序
	]
});
          /*图片-停用*/
    function member_stop(obj, id) {
        layer.confirm('确定关闭红娘服务吗？', function (index) {
            $.ajax({
                type: 'POST',
                url: 'HongniangStop.ashx',
                dataType: 'json',
                data: {
                    id:id
                },
                success: function (data) {
                 
                    if (data == 0) {
                      
                        layer.msg('已停用!', { icon: 5, time: 1000 });
                        $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">待处理</span>');
                    }
                    else {
                        layer.msg('停用失败!', { icon: 5, time: 1000 });
                    }
                   
                },
                error: function (data) {
                    console.log(data.msg);
                },
            });
        });
    }

    /*红娘申请-启用*/
    function member_start(obj, id) {
        layer.confirm('确定开启红娘服务？', function (index) {
            $.ajax({
                type: 'POST',
                url: 'Hongniangstar.ashx',
                dataType: 'json',
                data: {
                    id: id
                },
                success: function (data) {
                   
                    if (data == 0) {
                       
                        layer.msg('已启用!', { icon: 6, time: 1000 });
                        $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已处理</span>');
                    }
                    else {
                        layer.msg('启用失败!', { icon: 5, time: 1000 });
                    }
                },
                error: function (data) {
                    console.log(data.msg);
                },
            });
        });
    }
</script>
    </form>
</body>
</html>
