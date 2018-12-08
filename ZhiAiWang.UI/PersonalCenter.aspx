<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonalCenter.aspx.cs" Inherits="ZhiAiWang.UI.PersonalCenter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/ActivitContent.css" rel="stylesheet" />
    <link href="css/head.css" rel="stylesheet" />
    <link href="css/zTreeStyle.css" rel="stylesheet" />
    <link href="css/gerenzhognxin.css" rel="stylesheet" />
    <script src="js/jquery-1.4.4.min.js"></script>
    <script src="js/jquery.ztree.core.js"></script>
    <script type="text/javascript">

        var curMenu = null, zTree_Menu = null;
        var setting = {
            view: {
                showLine: false,
                showIcon: false,
                selectedMulti: false,
                dblClickExpand: false,
                addDiyDom: addDiyDom
            },
            data: {
                simpleData: {
                    enable: true
                }
            },
            callback: {
                beforeClick: beforeClick
            }
        };

        var zNodes = [
            { id: 1, pId: 0, name: "基本资料", icon: "images/gerenzhongxin/centernavicn1.png", open: true },
            { id: 11, pId: 1, name: "注册信息", url: "RegInfo.aspx", target: "MyIframe" },
            { id: 12, pId: 1, name: "内心独白", url: "InnerMonologue.aspx", target: "MyIframe" },
            { id: 13, pId: 1, name: "详细资料", url: "GerenDetail.aspx", target: "MyIframe" },

            { id: 2, pId: 0, name: "我的活动", url: "TakeActive.aspx" },

            { id: 3, pId: 0, name: "我的相册", url: "SetPhoto.aspx", target: "MyIframe" },

            { id: 4, pId: 0, name: "系统设置" },
            { id: 41, pId: 4, name: "修改密码", url: "UpdatePwd.aspx", target: "MyIframe" },
            //{ id: 42, pId: 4, name: "婚恋状态" },
            //{ id: 43, pId: 4, name: "手机验证" }
        ];

        function addDiyDom(treeId, treeNode) {
            var spaceWidth = 5;
            var switchObj = $("#" + treeNode.tId + "_switch"),
                icoObj = $("#" + treeNode.tId + "_ico");
            switchObj.remove();
            icoObj.before(switchObj);

            if (treeNode.level > 1) {
                var spaceStr = "<span style='display: inline-block;width:" + (spaceWidth * treeNode.level) + "px'></span>";
                switchObj.before(spaceStr);
            }
        }

        function beforeClick(treeId, treeNode) {
            if (treeNode.level == 0) {
                var zTree = $.fn.zTree.getZTreeObj("treeDemo");
                zTree.expandNode(treeNode);
                return false;
            }
            return true;
        }

        $(document).ready(function () {
            var treeObj = $("#treeDemo");
            $.fn.zTree.init(treeObj, setting, zNodes);
            zTree_Menu = $.fn.zTree.getZTreeObj("treeDemo");
            curMenu = zTree_Menu.getNodes()[0].children[0].children[0];
            zTree_Menu.selectNode(curMenu);

            treeObj.hover(function () {
                if (!treeObj.hasClass("showIcon")) {
                    treeObj.addClass("showIcon");
                }
            }, function () {
                treeObj.removeClass("showIcon");
            });
        });
        //-->
    </script>
   
     <form id="form1" runat="server">
    <div>
     
        <div id="mains">
            <aside>
                <div id="touxiang " style="text-align: center;">
                    <img src="images/header/<%=Session["head"] %>" style="border-radius: 50%; width: 124px; height: 124px; border: solid 1px #E9E6E6; margin-top: 25px;" />
                </div>
                <div style="text-align: center;">
                    <p style="font-size: 16px"><%=Session["uid"] %></p>
                    <p style="font-size: 14px;">Loveid:<%=Session["id"] %></p>
                </div>
                <div class="zTreeDemoBackground left">
                    <ul id="treeDemo" class="ztree"></ul>
                </div>
            </aside>
            <article>
                
                <iframe name="MyIframe" onscroll="none" src="RegInfo.aspx">  
                </iframe>
            </article>
        </div>
        <div id="last">
            <div id="Page">
                <div class="pagenum" style="text-align: center; margin-top: 20px;">

                </div>
            </div>
            <div class="footer" style="background: none">
                <div class="footer_jz">
                    <div class="footer1">
                        <h3>关于我们</h3>
                        <ul>
                            <li><a href="http://www.hongniang.com/page/index/id/249316" target="_blank">关于我们</a></li>
                            <li><a href="http://www.hongniang.com/news/index" target="_blank">媒体报道</a></li>
                            <li><a href="http://www.hongniang.com/article/love_list" target="_blank">恋爱百科</a></li>
                            <li><a href="http://www.hongniang.com/page/index/id/249315" target="_blank">会员条款</a></li>
                            <li><a href="http://www.hongniang.com/page/index/id/249314" target="_blank">招商合作</a></li>
                            <li><a href="http://www.hongniang.com/page/index/id/249318" target="_blank">常见问题</a></li>
                            <li><a href="http://www.hongniang.com/page/index/id/249317" target="_blank">征婚提醒</a></li>
                            <li><a href="http://www.hongniang.com/page/index/id/249314" target="_blank">友情链接</a></li>
                        </ul>
                    </div>
                    <div class="footer2">
                        <h3>手机微信</h3>
                        <img src="images/hunqing/hnweixin.jpg" width="137" height="133" alt="">
                    </div>
                    <div class="footer3">
                        <h3>服务热线</h3>
                        <p class="rxdh" style="font-size: 12px; color: #666; border: none">热线电话：0571-85337299</p>
                        <p class="address" style="font-size: 12px; color: #666">地址：杭州市朝晖路219号中山花园写字楼3楼       ( 地铁1号线西湖文化广场站，附近公交          车站：西湖文化广场，中北桥</p>
                    </div>
                    <div class="footer1">
                        <h3>友情链接</h3>
                        <!-- <div class="xl"> <a href="#"><img src="/public/home/images/xl_03.png" width="53" height="53" alt=""/></a> <span style="display:block; left:-100px; opacity:0"><img src="/public/home/images/hnweixin.jpg" width="137" height="133" alt=""/></span> </div> -->
                        <!-- <div class="wx"> <a href="#"><img src="/public/home/images/wx_05.png" width="53" height="53" alt=""/></a> <span style="display:block; left:-100px; opacity:0"><img src="/public/home/images/hnweixin.jpg" width="137" height="133" alt=""/></span> </div> -->
                        <ul>
                            <li><a href="http://www.hongniang.com/event/detail/id/775" target="_blank">杭州红娘网</a></li>
                            <li><a href="http://www.hongniang.com/news/index" target="_blank">杭州交友</a></li>
                            <li><a href="http://www.hongniang.com/event/detail/id/548" target="_blank">中国红娘日</a></li>
                            <li><a href="http://www.hongniang.com/event/detail/id/776" target="_blank">相亲大会</a></li>
                            <li style="margin-right: 24px;"><a href="http://www.hongniang.com/event/index" target="_blank">情缘活动</a></li>
                            <li><a href="http://www.hongniang.com/event/index" target="_blank">交友活动</a></li>
                            <li><a href="http://www.hongniang.com" target="_blank">浙江红娘网</a></li>
                            <li><a href="http://www.hongniang.com/match" target="_blank">找对象</a></li>
                            <li><a href="http://www.hongniang.com/now" target="_blank">今日会员</a></li>
                            <li><a href="http://www.hongniang.com/zhenghun" target="_blank">同城征婚</a></li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                    <div class="gaba">
                        <p>中国红娘网 ◎版权所有 <a target="_blank" href="http://www.miitbeian.gov.cn/">浙ICP备浙B2-20090133</a></p>
                        <ul>
                            <li>
                                <img src="images/hunqing/goan1.jpg" width="126" height="49" alt=""></li>
                            <li>
                                <img src="images/hunqing/goan2.jpg" width="126" height="49" alt=""></li>
                            <li>
                                <img src="images/hunqing/goan3.jpg" width="126" height="49" alt=""></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</asp:Content>
