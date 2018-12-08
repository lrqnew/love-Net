<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TakesActivit.aspx.cs" Inherits="ZhiAiWang.UI.Admin.TakesActivit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>活动报名列表</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
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
</head>
<body>
    <form id="form1" runat="server">
        <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 活动管理 <span class="c-gray en">&gt;</span> 活动报名列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <%--<div class="page-container">
        <div class="text-c">
            <button onclick="removeIframe()" class="btn btn-primary radius">关闭选项卡</button>
            <span class="select-box inline">
                <select name="" class="select">
                    <option value="0">全部分类</option>
                    <option value="1">分类一</option>
                    <option value="2">分类二</option>
                </select>
            </span> 日期范围：
            <input type="text" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}' })" id="logmin" class="input-text Wdate" style="width:120px;"/>
            -
            <input type="text" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d' })" id="logmax" class="input-text Wdate" style="width:120px;"/>
            <input type="text" name="" id="" placeholder=" 资讯名称" style="width:250px" class="input-text"/>
            <button name="" id="Button1" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜资讯</button>
        </div>--%>
        <div class="cl pd-5 bg-1 bk-gray mt-20">
            <div class="mt-20">
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table class="table table-border table-bordered table-bg table-hover table-sort table-responsive">
                         <thead>
                    <tr class="text-c">
                        <th width="25"><input type="checkbox" name="" value=""></th>
                        <th width="80">用户名</th>
                        <th width="80">性别</th>
                        <th >活动海报</th> 
                        <th width="80">活动标题</th>
                        <th width="80">活动内容</th>
                        <th width="120">活动时间</th>
                        <th width="75">活动地址</th>
                        <th width="60">活动费用</th>
                        <th width="120">用户邮箱</th>
                        <th width="120">用户手机号</th>
                    </tr>
                </thead>
                </HeaderTemplate>
            <ItemTemplate>
               
                <tbody>
                    <tr class="text-c">
                        <td><input type="checkbox" name="" value=""></td>
                        <td class="aa"><%#Eval("name") %></td>
                        <td class="aa"><%#Eval("age") %></td>
                        <td class="text-l" style="width:120px;"><img style="width:140px; height:110px;" alt="" src="../images/newActit/<%#Eval("activitiesPic") %>" /></td>                 
                        <td><%#Eval("activitiesTit") %></td>
                        <td><%#Eval("activitiesContent") %></td>
                        <td><%#Eval("activitiesTime") %></td>
                        <td><%#Eval("activitiesAddress") %></td>
                        <td class="td-status"><span class="label label-success radius"><%#Eval("Moneys") %></span></td>
                        <td><%#Eval("email") %></td>
                        <td class="f-14 td-manage">
                         <%#Eval("phone") %>
                        </td>
                    </tr>
                    
                </tbody>
            </ItemTemplate>
                <FooterTemplate>
                    
                    </table>
                    
                </FooterTemplate>
        </asp:Repeater>

           <%-- <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="6"
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
            </webdiyer:AspNetPager>--%>
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
            "aaSorting": [[1, "desc"]],//默认第几个排序
            "bStateSave": true,//状态保存
            "pading": false,
            "aoColumnDefs": [
                //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
                { "orderable": false, "aTargets": [0, 8] }// 不参与排序的列
            ]
        });

        /*资讯-添加*/
        function article_add(title, url, w, h) {
            var index = layer.open({
                type: 2,
                title: title,
                content: url
            });
            layer.full(index);
        }
        /*资讯-编辑*/
        function article_edit(title, url, id, w, h) {
            var index = layer.open({
                type: 2,
                title: title,
                content: url
            });
            layer.full(index);
        }
        $(function () {
            $("#del").click(function () {
                //var tie = $(this).parent().eq(3).html();
                alert(123);
            });
        });
        /*资讯-删除*/
        function article_del(obj, id) {
            layer.confirm('确认要删除吗？', function (index) {
                $.ajax({
                    type: 'POST',
                    url: 'ActivitdelHandler.ashx',
                    dataType: 'json',
                    data: {
                        id: id
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
    </form>
</body>
</html>
