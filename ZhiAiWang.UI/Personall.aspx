<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Personall.aspx.cs" Inherits="ZhiAiWang.UI.Personall" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style type="text/css">
        div {
            display: block;
        }

        Inherited from body.home-page.page-scroll body {
            font-family: "微软雅黑";
            line-height: 1.7;
        }

        .my_center {
            width: 1190px;
            margin: 0px auto;
        }

        * {
            box-sizing: content-box;
        }

        body {
            font-family: "微软雅黑";
            line-height: 1.7;
        }

        .my_center .main_left {
            width: 725px;
            float: left;
            margin-top: 25px;
        }

            .my_center .main_left .information {
                height: 135px;
                background: #fff;
                border: 1px #d9d8d8 solid;
                padding: 25px;
            }

                .my_center .main_left .information .infoimg {
                    width: 119px;
                    height: 137px;
                    float: left;
                }

                    .my_center .main_left .information .infoimg img {
                        width: 117px;
                        height: 135px;
                    }

        img {
            vertical-align: middle;
        }

        img {
            border: 0;
        }

        .my_center .main_left .information .info_text {
            float: left;
            color: #666;
            font-size: 16px;
            margin-left: 20px;
            height: 135px;
        }

        p {
            margin: 0 0 10px;
        }

        /*element.style {
    max-width: 130px;
    margin-right: 10px;
    display: block;
    float: left;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
}
element.style {
    font-size: 14px;
    margin-top: 5px;
}
element.style {
    font-size: 14px;
    margin: 10px 0;
}
element.style {
    padding: 4px 10px;
    background: #d86ea3;
    color: #fff;
    border-radius: 5px;
}*/
        a {
            /*color: #337ab7;*/
            text-decoration: none;
        }
        /********************************************************/
        .my_center .main_left .recommend {
            margin-top: 25px;
        }

            .my_center .main_left .recommend .title {
                color: #444;
                font-size: 14px;
            }

                .my_center .main_left .recommend .title span {
                    color: #d86ea3;
                    font-size: 22px;
                }

            .my_center .main_left .recommend .main {
                width: 750px;
                margin-top: 25px;
            }

        .plcListLoading {
            min-height: 100px;
            overflow: hidden;
            background: url(../images/loading-32.gif) no-repeat center center; /*没有图片*/
        }

        /*.my_center .main_left .recommend .list_main {
            margin-right: 20px;
        }*/

        /*.my_center .main_left .recommend .list_main {
            background: #fff;
            border: 1px #d9d8d8 solid;
            width: 224px;
            padding-top: 12px;
            margin: 0px 24px 25px 0px;
            float: left;
        }*/
        .my_center .main_left .recommend .list_main {
            background: #fff;
            border: 1px #d9d8d8 solid;
            width: 224px;
            padding-top: 12px;
            padding-left:10px;
            margin: 0px 24px 25px 0px;
            /*margin-right: 24px;*/
            float: left;
        }

            .my_center .main_left .recommend .list_main .imgs {
                text-align: center;
                margin-top: 0px;
                padding: 0 11px;
                position: relative;
            }

            .my_center .main_left .recommend .list_main .zs {
                width: 35px;
                line-height: 20px;
                position: absolute;
                top: 0px;
                left: 12px;
                background: #000;
                color: #fff;
                /*filter: alpha(opacity=50);*/
                opacity: 0.5;
            }

        .page_foot span, a {
            margin: 0;
            border-radius: 5px;
        }

        .my_center .main_left .recommend .list_main .info .name {
            color: #d86ea3;
            font-size: 14px;
        }

            .my_center .main_left .recommend .list_main .info .name img {
                position: relative;
                top: 2px;
            }

        .page_foot span, a {
            margin: 0;
            border-radius: 5px;
        }



        .my_center .main_left .recommend .list_main .info .info1 {
            font-size: 12px;
            color: #666;
            border-bottom: 1px #e9e9e9 solid;
            line-height: 30px;
            height: 60px;
            overflow: hidden;
        }

        .my_center .main_left .recommend .list_main .info .info2 {
            font-size: 12px;
            color: #666;
        }

        p {
            margin: 0 0 10px;
        }

        .my_center .main_right {
            width: 440px;
            float: left;
            margin-left: 10px;
            margin-top: 25px;
            margin-left: 25px;
        }

            .my_center .main_right .news {
                height: 185px;
                background: #fff;
                border: 1px #d9d8d8 solid;
            }

                .my_center .main_right .news .n1 {
                    margin-top: 45px;
                    text-align: center;
                    float: left;
                    font-size: 18px;
                    position: relative;
                }

        .page_foot span, a {
            margin: 0;
            border-radius: 5px;
        }

        .my_center .main_right .news .n1 span {
            color: #d86ea3;
        }

        a {
            color: #337ab7;
        }

        .my_center .main_right .vip_server {
            margin-top: 25px;
            height: 145px;
            background: #fcf7ec;
            border: 1px #dad9d9 solid;
        }

        .vip_server {
            width: 440px;
        }

        .my_center .main_right .vip_server .left {
            float: left;
            width: 70px;
            background: #d37ab6;
            height: 115px;
            color: #fff;
            font-size: 26px;
            padding: 30px 0px 0px 15px;
            border-right: 1px #dad9d9 solid;
        }

        .my_center .main_right .vip_server .right {
            width: 350px;
        }

        .my_center .main_right .vip_server .right {
            float: left;
            width: 352px;
        }

        body, ol, ul, h1, h2, h3, h4, h5, h6, p, th, td, dl, dd, form, fieldset, legend, input, textarea, select {
            margin: 0;
            padding: 0;
        }

        .my_center .main_right .vip_server .right .list {
            padding-top: 13px;
        }

        .my_center .main_right .vip_server .right .list {
            padding: 25px 25px 0 0px;
            padding-top: 25px;
        }

            .my_center .main_right .vip_server .right .list p {
                display: block;
                float: left;
                width: 40%;
                padding: 0 5%;
                font-size: 14px;
                color: #666;
            }

        .list p {
            margin: 0;
        }

        .right p {
            height: 30px;
            overflow: hidden;
        }


        .my_center .main_right .vip_server .right .list2 {
            clear: both;
            padding-top: 20px;
        }

        .list2 .text {
            width: 178px;
            font-size: 12px;
            margin-left: 25px;
            float: left;
        }

        .list2 .btns {
            float: left;
            margin-left: 20px;
        }



        .my_center .main_right .vip_server .right .list2 .text a {
            color: #698ec0;
        }

        input[type="checkbox"], input[type="radio"] {
            margin: 4px 0 0;
            line-height: normal;
        }

        .list2 .btns input {
            background: #d86ea3;
            color: #fff;
            line-height: 35px;
            border: none;
            width: 90px;
            cursor: pointer;
        }

        .my_center .main_right .vip_hn {
            margin-top: 165px;
            background: #f1f1f1;
            border: 1px #d9d8d8 solid;
            cursor: pointer;
        }

        .vip_hn img {
            vertical-align: middle;
            width: 425px;
            height: 102px;
        }

        .my_center .main_right .gzs {
            min-height: 185px;
        }

        .my_center .main_right .gzs {
            clear: both;
            margin-top: 25px;
            background: #fff;
            padding: 10px 20px 20px 20px;
            border: 1px #dad9d9 solid;
        }

            .my_center .main_right .gzs .title {
                color: #dd506f;
                font-size: 22px;
            }

            .my_center .main_right .gzs ul {
                margin-top: 35px;
            }

        ol, ul {
            margin-bottom: 10px;
        }

        ul, ol {
            list-style: none;
        }

        .my_center .main_right .gzs .title span {
            font-size: 14px;
            float: right;
            margin-top: 10px;
        }

        .my_center .main_right .gzs ul li {
            width: 70px;
            float: left;
            margin-right: 9px;
        }

        body, ul, li, ol, p, h1, h2, h3, h4, h5, h6, form, input, td, tr {
            margin: 0;
            padding: 0;
        }
        /*li {
    display: list-item;
    text-align: -webkit-match-parent;
}*/
        .page_foot span, a {
            margin: 0;
            border-radius: 5px;
        }

        .my_center .main_right .gzs ul li img {
            width: 100%;
            height: 70px;
        }

        .my_center .main_right .gzs ul li p {
            text-align: center;
            width: 70px;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
        }

        .my_center .main_right .gzs ul {
            margin-top: 35px;
        }

        .my_center .main_right .gzs {
            min-height: 185px;
        }

        .my_center .main_right .gzs {
            clear: both;
            margin-top: 25px;
            background: #fff;
            padding: 10px 20px 20px 20px;
            border: 1px #dad9d9 solid;
        }

        .clear {
            clear: both;
            overflow: hidden;
        }
        #file_div { border: 0px solid #CCCCCC; height: 33px; line-height: 25px; text-align: center; width: 128px; }
           #file_text {
               background-color:#d9d8d8; margin-top:-26px; z-index:999; position: absolute;width:120px;
           }
           .touxiang {
               padding: 4px 10px; background: #d86ea3; color: #fff; border-radius: 5px;
           }
           .sc {
               background: #d86ea3; color: #fff; border-radius: 5px;padding: 4px 10px;
           }
    </style>
    <script src="js/jquery-3.2.1.min.js"></script>
    <link href="css/UploadPicTest.css" rel="stylesheet" />
    <script>
        $(function () {
            
            $("input[class='orderPay']").click(function () {
                $(this).parent().parent().find("input[class='orderPay']").removeAttr("checked", "checked");
                $(this).attr("checked", "checked");
               
            });
            $("#pay").click(function () {
                var prices = $(".right>.list>p>input[checked='checked']").val();

                window.location.href = "pay1.aspx?price=" + prices;

                //$.ajax({
                //    url: "PersonallHandler.ashx",
                //    data: {pri:prices},
                //    type: "post",
                //    success: function () {
                        
                //        //
                //        //if (result=="false") {
                //        //    alert(result+result);
                //        //} else {
                //        //    alert(result);//Session["price"].val()
                //        //}
                //    },
                    
                });
            });
     
    </script>
     <script type="text/javascript">
        function doit() {
            form1.submit();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <div class="my_center">
                <div class="banners">
                    <!--<img src="/public/home/images/mycenter_banner.jpg" alt="">-->
                    <!--头部广告-->
                    <div id="full-screen-slider" class="fl">
                        <ul id="slides">
                            <li style="background: url(/public/images/huanglong.jpg) no-repeat center"></li>
                            <li style="background: url(/public/images/wansong.jpg) no-repeat center"></li>
                        </ul>
                    </div>
                    <!--头部广告-->
                </div>
                <!--<div style="width: 1189px; margin: 0 auto; position: relative; padding-right: 7px;margin-top: 15px; " class="coupon_top"> <img src="" style="width: 100%" class="coupon_img"> <a href="javascript:void(0)" class="coupon_btn" style="width: 176px; height: 60px; display: block; position: absolute; top: 12px; right: 75px ;"></a> </div>-->
                <div class="main_left">
                    <div class="information">
                        <!--头像-->
                        <div class="infoimg" >
                            
                         <asp:Image ImageUrl=" " class="picshow" ID="pic" runat="server" />
                            <div id="file_div" style="width:117px;height:135px;margin-top:-135px;">
                                 <asp:FileUpload ID="fileUpload" runat="server" style="width:117px;height:135px; opacity:0;"/>
                                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                                </div>
                        </div>
                        <div class="info_text">
                            <p>
                                <span style="max-width: 130px; margin-right: 10px; display: block; float: left; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;" id="name"><%=Session["uid"] %></span>
                                <img src="images/header/mem_rz22.png" alt="手机已验证" title="手机已验证" />
                                <img src="images/header/mem_rz1.png" alt="身份证未验证" title="身份证未验证">
                            </p>
                            <p style="font-size: 14px; margin-top: 5px;">Loveid:&nbsp;&nbsp;<%=Session["id"] %></p>
                            <!--
                    <p style="font-size:14px;margin-top:5px;"><a href="/user/avatar" style="padding: 4px 10px;
    background: #d86ea3;color: #fff;border-radius: 5px;">上传头像</a></p>-->
                            <p style="font-size: 14px; margin: 10px 0">
                              
                                <a id="vip_photo" href="Album.aspx" style="padding: 4px 10px; background: #d86ea3; color: #fff; border-radius: 5px;">相册</a>
                                
                            </p>
                            <p style="font-size: 14px; margin: 10px 0">
                                <asp:Button ID="Button1" CssClass="touxiang" runat="server" Text="保存头像" BackColor="#D86EA3" OnClick="Button1_Click" />
                            </p>
                        </div>
                        <div class="jd" style="float: left; margin-left: 110px; width: 140px; height: 140px;">
                            <div id="myStat" data-dimension="150" data-text="18%" data-info="完善信息" data-width="8" data-fontsize="23" data-percent="18" data-fgcolor="#4ade93" data-bgcolor="#d4d4d4" data-fill="#fff" class="circliful" style="position: relative; width: 150px;">
                                <div class="tjgr">个人资料</div>
                                <div class="wclz">完成</div>
                            </div>
                        </div>
                        <div class="info_text2">
                            <!-- <p><a href="/user/edit/mid/10771078" style="color:#d86ea3;">个人设置</a></p> -->
                            <p><a href="PersonalCenter.aspx" style="color: #d86ea3;" target="_blank">个人设置</a></p>
                            <p><a href="#" style="color: #4472b0;" target="_blank">预览我的主页</a></p>
                            <p></p>
                        </div>
                    </div>
                    <div class="recommend">
                        <div class="title">
                            <span>推荐会员</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有<span>异性</span>会员符合您的择偶条件
                        </div>
                        <!--
                    <a href="javascript:;" id="change">换一批</a>-->
                        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                            <ItemTemplate>
                                <div class="list_main" style="height: 422px;">
                                    <div class="imgs">
                                        <div class="zs">1张</div>
                                        <a target="_blank" href="#">
                                            <a href="UserData.aspx?userId=<%#Eval("userId") %>">
                                            <img src='<%#"images/header/"+ Eval("headImgUrl") %>' style="max-height: 260px; min-height: 150px; width: 100%" alt="" />
                                       </a>
                                                </a>
                                        <div class="hd" style="bottom: 0px; opacity: 1; width: 203px;"><a href="javascript:void(0)" style="color: #fff; display: block; padding-left: 30px; margin: 0 50px; background: url(/public/home/images/search_lt.png) no-repeat left center;" data-id="10631757">打招呼</a></div>
                                    </div>
                                    <div class="info">
                                        <div class="name">
                                            <a target="_blank" class="name" href="#"><%#Eval("petname") %></a>
                                            <img src="images/personalCenter/mem_rz1.png" alt="" />
                                        </div>
                                        <div class="info1" style="height: 40px;"><span><%#Eval("age") %></span> <span><%#Eval("[address]") %></span> <span><%#Eval("gender") %></span> <span><%#Eval("height") %></span> </div>
                                        <div class="info2">
                                            <span style="color: #333;">内心独白：</span><span><%#Eval("monologue") %></span><p style="width: 204px; height: 62px; overflow: hidden;"></p>
                                            <!--<span class="shenlue">...</span>-->
                                        </div>
                                    </div>
                                </div>

                            </ItemTemplate>
                        </asp:DataList>


                        <div style="clear: both"></div>
                        <div class="pagebar paginator" style="margin-top: 5px; text-align: center;" id="page1"></div>
                    </div>
                </div>
                <div class="main_right">
                    <div class="news" id="news">
                        <div class="n1 " style="left: 85px;">
                            <a href="Say hello.aspx">
                                <img src="images/personalCenter/mycenter_n1.jpg" alt="" />
                                <p><span id="private_msg" runat="server">
                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></span>&nbsp;&nbsp;消息</p>
                            </a>
                        </div>
                        <div class="n1 " style="left: 210px;">
                            <a href="#">
                                <img src="images/personalCenter/mycenter_n2.jpg" alt="" />
                                <p style="margin-top: 12px;"><span id="system_msg">0</span>&nbsp;&nbsp;系统通知</p>
                            </a>
                        </div>
                    </div>
                    <div class="vip_server">
                        <div class="left">会员服务</div>
                        <div class="right">
                            <div class="list">
                                <p>
                                    <input class="orderPay" value="98" name="id" type="radio" />&nbsp;&nbsp;一个月&nbsp;&nbsp;98.00元

                                </p>
                                <p>
                                    <input class="orderPay" value="198"  name="id" type="radio" />&nbsp;&nbsp;三个月&nbsp;&nbsp;198.00元
                                </p>
                                <p>
                                    <input class="orderPay" value="298"  name="id" type="radio" />&nbsp;&nbsp;半年&nbsp;&nbsp;298.00元
                                </p>
                                <p>
                                    <input class="orderPay" value="398" checked="checked"  name="id"  type="radio" />&nbsp;&nbsp;一年&nbsp;&nbsp;398.00元

                                </p>
                            </div>
                        </div>
                        <div class="list2">
                            <div class="text">
                                <a href="#">会员权利:</a> 服务期间免费看信，无限制浏览照片、搜索优先呈现...
                            </div>
                            <div class="btns">
                                <a href="#"><%--pay1.aspx--%>
                                <input id="pay" class="kt" value="立刻开通" type="button" />
                                </a>
                            </div>
                        </div>


                        <script> </script>
                     
                    </div>
                    <div class="clear" style="height: 30px;"></div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
