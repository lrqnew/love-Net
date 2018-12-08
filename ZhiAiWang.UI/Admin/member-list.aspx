<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="member-list.aspx.cs" Inherits="ZhiAiWang.UI.Admin.member_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
    <title>用户管理</title>
    <style>
        .table tr td
        {
            text-align:center;
        } 
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 用户中心 <span class="c-gray en">&gt;</span> 用户管理 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<%--<div class="text-c"> 日期范围：
		<input type="text" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}' })" id="datemin" class="input-text Wdate" style="width:120px;">
		-
		<input type="text" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'datemin\')}',maxDate:'%y-%M-%d' })" id="datemax" class="input-text Wdate" style="width:120px;">
		<input type="text" class="input-text" style="width:250px" placeholder="输入会员名称、电话、邮箱" id="" name="">
		<button type="submit" class="btn btn-success radius" id="Button1" name=""><i class="Hui-iconfont">&#xe665;</i> 搜用户</button>
	</div>--%>
	<%--<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> <a href="javascript:;" onclick="member_add('添加用户','member-add.html','','510')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加用户</a></span> <span class="r">共有数据：<strong>88</strong> 条</span> </div>--%>
	<div class="mt-20">
        
	<table class="table table-border table-bordered table-hover table-bg table-sort" >
		<thead>
			<tr class="text-c">
				<%--<th width="25"><input type="checkbox" name="" value=""></th>--%>
				<th width="80">ID</th>
				<th width="100">用户名</th>
				<th width="40">性别</th>
				<th width="90">手机</th>
				<th width="150">邮箱</th>
				<th width="70">学历</th>
				<th width="130">会员状态</th>
				<th width="70">状态</th>
                <th width="150">注册时间</th>
				<th width="100">操作</th>
			</tr>
		</thead>
		<tbody id="tex">

            <asp:Repeater ID="RepeaterUserList" runat="server">
                <ItemTemplate>
                    <tr >
                      <%--  <td><input type="checkbox" value="" name=""></td>--%>
                        <td><%#Eval("userId") %></td> 
                        <td><u style="cursor:pointer" class="text-primary" onclick="member_show('用户资料','member-show.html?id=<%#Eval("userId") %>','10001','360','410')"><%#Eval("petname") %></u></td>
                        <td><%#Eval("gender") %></td>
                        <td><%#Eval("phone") %></td>
                        <td><%#Eval("email") %></td>
                        <td><%#Eval("education") %></td>
                        <td>
                            <%# Convert.ToInt32(Eval("member"))==1?"<span class='label label-defaunt radius'>会员</span>": "<span class=‘label label-success radius’>非会员</span> "%>
                        </td>
                        <td class="td-status">
                         <%# Convert.ToInt32(Eval("userState"))==1?"<span class='label label-defaunt radius'>已停用</span>": "<span class=‘label label-success radius’>已启用</span> "%>
                        </td>
                        <td>
                            <%#Eval("addTime") %>
                        </td>
				        <td class="td-manage">
                             
                            <a style="text-decoration:none" onClick="member_stop(this,'<%#Eval("userId") %>','<%#Eval("email") %>')" href="javascript:;" title="停用">
                                <i class="Hui-iconfont">&#xe631;</i>
                            </a>
                             <a style="text-decoration:none" onClick="member_start(this,'<%#Eval("userId") %>')" href="javascript:;" title="启用">
                                <i class="Hui-iconfont">&#xe6e1;</i>
                            </a>
                             <%--<a title="编辑" href="javascript:;" onclick="member_edit('编辑','member-add.html','4','','510')" class="ml-5" style="text-decoration:none">
                                 <i class="Hui-iconfont">&#xe6df;</i>
                             </a> --%>
                            <%--<a style="text-decoration:none" class="ml-5" onClick="change_password('修改密码','change-password.html?id=<%#Eval("userId") %>&name=<%#Eval("petname") %>','10001','600','270')" href="javascript:;" title="修改密码">
                                <i class="Hui-iconfont">&#xe63f;</i>
                            </a> --%>
                           <%-- <a title="删除" href="javascript:;" onclick="member_del(this,'<%#Eval("userId") %>')" class="ml-5" style="text-decoration:none">
                                <i class="Hui-iconfont">&#xe6e2;</i>
                            </a>--%>
				        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
		
            
		</tbody>
	</table>
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
    $(function () {


        $('.table-sort').dataTable({
            "aaSorting": [[0, "desc"]],//默认第几个排序
            "bStateSave": true,//状态保存
            "aoColumnDefs": [
              //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
             { "orderable": true, "aTargets": [8, 9] }// 制定列不参与排序
            ],
        });

    });
    /*用户-添加*/
    function member_add(title, url, w, h) {
        layer_show(title, url, w, h);
    }
    /*用户-查看*/
    function member_show(title, url, id, w, h) {
        layer_show(title, url, w, h);
    }
    /*用户-停用*/
    function member_stop(obj, id,emails) {
        layer.confirm('确认要停用吗？', function (index) {
            $.ajax({
                type: 'POST',
                url: 'UserStopHandler.ashx',
                dataType: 'json',
                data: {
                    id: id,
                    email: emails
                },
                success: function (data) {
                 
                    if (data == 0) {
                      // $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="Hui-iconfont">&#xe6e1;</i></a>');
                        $(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
                        //$(obj).remove();
                        layer.msg('已停用!', { icon: 5, time: 1000 });

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

    /*用户-启用*/
    function member_start(obj, id) {
        layer.confirm('确认要启用吗？', function (index) {
            $.ajax({
                type: 'POST',
                url: 'UserOpenHandler.ashx',
                dataType: 'json',
                data: {
                    id: id
                },
                success: function (data) {
                   
                    if (data == 0) {
                        //$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a>');
                        $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
                       // $(obj).remove();
                        layer.msg('已启用!', { icon: 6, time: 1000 });
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
    /*用户-编辑*/
    function member_edit(title, url, id, w, h) {
        layer_show(title, url, w, h);

    }
    /*密码-修改*/
    function change_password(title, url, id, w, h) {
        layer_show(title, url, w, h);
    }
    /*用户-删除*/
    function member_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
            $.ajax({
                type: 'POST',
                url: 'DeleteUserByIdHandler.ashx',
                dataType: 'json',
                data: {
                    id:id
                },
                success: function (data) {
                    if (data == 0) {
                        $(obj).parents("tr").remove();
                        layer.msg('已删除!', { icon: 1, time: 1000 });
                    }
                    else {
                        layer.msg('删除失败!', { icon: 1, time: 1000 });
                    }
                    
                },
                error: function (data) {
                    console.log(data.msg);
                },
            });
        });
    }
</script> 
    </div>
    </form>
</body>
</html>
