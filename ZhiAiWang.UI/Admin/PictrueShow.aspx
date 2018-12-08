﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PictrueShow.aspx.cs" Inherits="ZhiAiWang.UI.admin.PictrueShow" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

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
    <style>
         .anpager .cpb {
            background: #b6adad none repeat scroll 0 0;
            border: 1px solid #CCCCCC;
            color: #FFFFFF;
            font-weight: bold;
            margin: 5px 4px 0 0;
            padding: 4px 5px 0;
        }

        .anpager a {
            background: #FFFFFF none repeat scroll 0 0;
            border: 1px solid #CCCCCC;
            color: #808080;
            margin: 5px 4px 0 0;
            padding: 4px 5px 0;
            text-decoration: none;
        }

            .anpager a:hover {
                background: #b6adad none repeat scroll 0 0;/*1F3A87*/
                border: 1px solid #fb91ee;/*1F3A87*/
                color: #FFFFFF;
            } 
    </style>
<title>图片列表</title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 图片管理 <span class="c-gray en">&gt;</span> 图片列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<%--<div class="page-container">
	<div class="text-c"> 日期范围：
		<input type="text" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}' })" id="logmin" class="input-text Wdate" style="width:120px;">
		-
		<input type="text" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d' })" id="logmax" class="input-text Wdate" style="width:120px;">
		<input type="text" name="" id="" placeholder=" 图片名称" style="width:250px" class="input-text">
		<button name="" id="" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜图片</button>
	</div>
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> <a class="btn btn-primary radius" onclick="picture_add('添加图片','picture-add.html')" href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加图片</a></span> <span class="r">共有数据：<strong>54</strong> 条</span> </div>--%>
	<div class="mt-20">
        <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
                <table class="table table-border table-bordered table-bg table-hover table-sort">
			<thead>
				<tr class="text-c">
					<th width="30"><input name="" type="checkbox" value=""></th>
					<th width="30">用户ID</th>
                    <th width="30">图片ID</th>
					<th width="80">封面</th>
					<th width="30">分类</th>
					<th width="50">发布状态</th>
					<th width="100">操作</th>
				</tr>
			</thead>
            </HeaderTemplate>
            <ItemTemplate>
                <tbody>
				<tr class="text-c">
					<td><input name="" type="checkbox" value=""></td>
					<td><%#Eval("userID") %></td>
                    <td><%#Eval("pictureID") %></td>
					<td  ><img style="width:220px; height:150px;" alt="" src="../images/gerenzhongxin/<%#Eval("pictureUrl") %>" /></td>
					<td class="text-l">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="maincolor" href="javascript:;"><%#Eval("pictureType") %></a></td>
					<td class="td-status"><span class="label label-success radius"><%# star(Convert.ToInt32(Eval("picstar")))%></td>
					<td class="td-manage">
                        <a style="text-decoration:none" onClick="member_stop(this,'<%#Eval("pictureID") %>')" href="javascript:;" title="审核未通过">
                        <i class="Hui-iconfont">&#xe631;</i></a> 
                        <a style="text-decoration:none" onClick="member_start(this,'<%#Eval("pictureID") %>')" href="javascript:;" title="通过审核">
                        <i class="Hui-iconfont">&#xe6e1;</i></a> 
                        <a style="text-decoration:none" class="ml-5" onClick="picture_del(this,'<%#Eval("pictureID") %>')" href="javascript:;" title="删除">
                            <i class="Hui-iconfont">&#xe6e2;</i></a></td>
				</tr>
			</tbody>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        
			<webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="3"
                HorizontalAlign="Center" Width="75%" Height="40px"
                meta:resourceKey="AspNetPager1" Style="font-size: 14px; margin: 0px auto; padding-top: 10px; margin-top: 20px; "
                AlwaysShow="false" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页"
                PrevPageText="上一页" SubmitButtonText="&nbsp;&nbsp;Go&nbsp;&nbsp;" SubmitButtonClass="submitBtn"
                CustomInfoStyle="font-size:14px;text-align:left;"
                InputBoxStyle="width:25px; border:1px solid #999999; text-align:center; "
                TextBeforeInputBox="转到第" TextAfterInputBox="页" PageIndexBoxType="TextBox"
                ShowPageIndexBox="Always" TextAfterPageIndexBox="&nbsp;&nbsp;页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                TextBeforePageIndexBox="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;转到&nbsp;&nbsp;" Font-Size="14px" CustomInfoHTML="共&lt;font color='#ff0000'&gt;%PageCount%&lt;/font&gt;页，第<font color='#ff0000'>%CurrentPageIndex%</font>页"
                ShowCustomInfoSection="Left" CustomInfoSectionWidth="19%"
                OnPageChanged="AspNetPager1_PageChanged" CssClass="anpager" CurrentPageButtonClass="cpb" PagingButtonSpacing="0" >
            </webdiyer:AspNetPager>
		
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
//$('.table-sort').dataTable({
//	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
//	"bStateSave": true,//状态保存
//	"aoColumnDefs": [
//	  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
//	  {"orderable":false,"aTargets":[0,8]}// 制定列不参与排序
//	]
//});

/*图片-添加*/
function picture_add(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}

/*图片-查看*/
function picture_show(title,url,id){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}

/*图片-审核*/
function picture_shenhe(obj,id){
	layer.confirm('审核文章？', {
		btn: ['通过','不通过'], 
		shade: false
	},
	function(){
		$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="picture_start(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布', {icon:6,time:1000});
	},
	function(){
		$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="picture_shenqing(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">未通过</span>');
		$(obj).remove();
    	layer.msg('未通过', {icon:5,time:1000});
	});	
}

/*图片-下架*/
function picture_stop(obj,id){
	layer.confirm('确认要下架吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="picture_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已下架</span>');
		$(obj).remove();
		layer.msg('已下架!',{icon: 5,time:1000});
	});
}

/*图片-发布*/
function picture_start(obj,id){
	layer.confirm('确认要发布吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="picture_stop(this,id)" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布!',{icon: 6,time:1000});
	});
}

/*图片-申请上线*/
function picture_shenqing(obj,id){
	$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">待审核</span>');
	$(obj).parents("tr").find(".td-manage").html("");
	layer.msg('已提交申请，耐心等待审核!', {icon: 1,time:2000});
}

/*图片-编辑*/
function picture_edit(title,url,id){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}

/*图片-删除*/
function picture_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$.ajax({
			type: 'POST',
			url: 'Picturedelete.ashx',
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
			error:function(data) {
				console.log(data.msg);
			},
		});		
	});
    }
      /*图片-停用*/
    function member_stop(obj, id) {
        layer.confirm('确认要不通过该图片吗？', function (index) {
            $.ajax({
                type: 'POST',
                url: 'PictureStop.ashx',
                dataType: 'json',
                data: {
                    id:id
                },
                success: function (data) {
                 
                    if (data == 0) {
                      // $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="Hui-iconfont">&#xe6e1;</i></a>');
                        $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">图片未通过审核</span>');
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

    /*图片-启用*/
    function member_start(obj, id) {
        layer.confirm('确认该图片要通过审核吗？', function (index) {
            $.ajax({
                type: 'POST',
                url: 'Picturestar.ashx',
                dataType: 'json',
                data: {
                    id: id
                },
                success: function (data) {
                   
                    if (data == 0) {
                        //$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a>');
                        $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">图片通过审核</span>');
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
</script>
    </form>
</body>
</html>
