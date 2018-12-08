<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pay2.aspx.cs" Inherits="ZhiAiWang.UI.pay2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-size: 14px;
            font-family: 微软雅黑;
            color: rgb(0, 0, 0);
            line-height: 1.7;
        }

        .pay {
            background: #fff;
            border: 1px #d9d8d8 solid;
            width: 1190px;
            margin: 35px auto;
        }

            .pay .title {
                line-height: 100px;
                height: 110px;
                font-size: 18px;
                color: #444;
                border-bottom: 1px #d9d9d9 solid;
            }

                .pay .title .left {
                    margin-left: 45px;
                    width: 900px;
                    float: left;
                }

                    .pay .title .left .money1 {
                        height: 110px;
                        float: right;
                        padding: 0 20px;
                        font-size: 18px;
                        border-right: 1px #d9d9d9 solid;
                    }

                .pay .title .right {
                    float: right;
                }

                    .pay .title .right .money1 {
                        float: right;
                        width: 185px;
                        font-size: 16px;
                        padding-left: 60px;
                    }

                        .pay .title .right .money1 span {
                            font-size: 36px;
                            color: #f57403;
                            margin: 0px 5px;
                        }

            .pay .main2s {
                clear: both;
                /*min-height: 540px;*/
            }

                .pay .main2s .left {
                    width: 150px;
                    background: #f0f0f0;
                    min-height: 540px;
                    float: left;
                }

        ul, ol {
            list-style: none;
        }

        .pay .main2s .left ul li {
            line-height: 50px;
            text-align: center;
            border-right: 1px #d9d9d9 solid;
            border-bottom: 1px #d9d9d9 solid;
            cursor: pointer;
            display: list-item;
        }

        .subs2 {
            background: #fff;
            /* border-right: none; */
            color: #f57403;
            height: 422px;
            overflow: hidden;
        }

        .page_foot span, a {
            margin: 0;
            border-radius: 5px;
        }

        a {
            text-decoration: none;
            color: #888;
        }

        .pay .main2s .right_main .main_sub .sub_left .text1 {
            color: #333;
            font-size: 14px;
            font-weight: bold;
        }

        form {
            display: block;
            /*margin-top: 0em;*/
        }

        .pay .main2s .right_main .main_sub .sub_left .pays {
            /*width: 150px;
    line-height: 50px;*/
            border: none;
            background: #f57403;
            color: #fff;
            margin-top: 25px;
        }

        .pay .main2s .right_main .main_sub .sub_left .text2 {
            font-size: 14px;
            clear: both;
            color: #999;
            margin-top: 20px;
            border-top: 1px #eee dashed;
            padding-top: 10px;
        }

        p {
            display: block;
        }

        b {
            font-weight: bold;
        }

        img {
            border: none;
        }

        .pay .main2s .right_main .main_sub .sub_left .text2 {
            font-size: 14px;
            clear: both;
            color: #999;
            margin-top: 20px;
            border-top: 1px #eee dashed;
            padding-top: 10px;
        }

        .pay .main2s .right_main .main_sub .sub_left .text1 img {
            /* float: left; */
            /* width: 150px; */
            float: initial;
            width: 79px;
            display: block;
            margin: 0 auto;
            padding: 32px 44px;
            border: #f57403 1px solid;
        }
    </style>
    <script src="js/xcConfirm.js"></script>
    <link href="css/xcConfirm.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="pay">
            <div class="title">
                <div class="left">
                    红娘会员12个月
            <div class="money1"><span><asp:Label ID="Label1" runat="server" Text=""></asp:Label></span>元</div>
                    <!-- 优惠券使用情况开始 -->
                </div>
                <div class="right">
                    <div class="money1">应付<span><asp:Label ID="Label2" runat="server" Text=""></asp:Label></span>元</div>
                </div>
            </div>
            <div class="main2s" style="min-height: 395px;">
                <div class="left" style="display: none;">
                    <ul>
                        <li class="subs2" id="l1"><a href="#">支付宝</a></li>
                        <!--
                <li  class="subs1" id="l2"><a href="#">网上银行</a></li>-->
                        <li class="subs1" id="l3"><a href="#">微信支付</a></li>
                        <!-- <li  class="subs1" id="l4"><a href="#">银联支付</a></li> -->
                    </ul>
                </div>
                <div class="right_main" style="float: initial; margin-left: 0; width: 1190px; padding: 20px 0;">
                    <div class="main_sub" id="sub1">
                        <div class="sub_left" style="float: left; width: 400px; margin-left: 195px;">
                            <div class="text1" style="margin-top: 20px;">
                                <img src="images/alipay-icon-1.png" alt="" style="float: initial; width: 79px; display: block; margin: 0 auto; padding: 32px 44px; border: #f57403 1px solid;"/>
                                <!-- <p style="float: initial; margin-left: 0; margin-top: 20px; text-align: center;">国内最大的第三方支付公司，实时到账，安全稳定。</p> -->
                            </div>
                            <div style="clear: both; text-align: center;">
                                <form action="/payment/doalipay" method="post" target="_blank">
                                    <input type="hidden" name="out_trade_no" value="1D984F73FE3070AB0855F921DE85AFF1">
                                    <input type="hidden" name="mid" value="10775200">
                                    <input type="hidden" name="subject" value="红娘会员12个月">
                                    <input type="button" class="pays" style="cursor: pointer; font-size: 18px; font-family: '微软雅黑'; width: 170px; height: 40px; line-height: 40px;" value="支付宝支付">
                                </form>
                            </div>
                            <div class="text2" style="display: none;">
                                <p>
                                    <b>可支持：</b><br>
                                    1.支付宝余额支付<br>
                                    2.支持而是多家主流银行的储蓄卡（即借记卡）和信用卡，无需开通网银，没有支付宝也可支付。
                                </p>
                            </div>
                        </div>
                        <!-- 以前支付二维码保留 -->
                        <!--
                    <div class="sub_right"> <div class="ma"></div> </div> -->
                        <!-- 以前支付二维码保留 -->
                        <!--
        <div class="sub_right"> <div class="vippay">开通红娘会员，快去联系TA们吧！</div> <div class="vippay_list"> <div> <div><img src="/public/images/man.jpg"  alt="" / style="width:103px; height:136px;"></div> </div> </div> </div>-->
                    </div>
                    <div id="sub2" style="display: none">bbb</div>
                    <div class="main_sub" id="sub3" style="float: right; width: 400px; text-align: center; margin-right: 195px;">
                        <!-- 扫描二维码开始 -->
                        <div class="w_code">
                            <img src="images/20180425215448787.jpg" style="border: 1px solid #d5d5d5; width: 168px; height: 168px; margin-top: 20px;">
                            <div class="w_codeb" style="background: #f57403; height: 35px; width: 170px; border: 1px solid #f57403; margin: 0 auto; margin-top: 20px;">
                                <img src="images/w_code.png" style="width: 100%;">
                            </div>
                        </div>
                        <!-- 扫描二维码结束 -->
                        <div class="sub_left" style="float: initial; width: 1150px; margin-left: -593px; padding: 0 20px;">
                            <div class="text2" style="text-align: left;">
                                <p>
                                    <b>可支持：</b><br>
                                    1.支付宝余额支付或微信余额支付<br>
                                    2.支持而是多家主流银行的储蓄卡（即借记卡）和信用卡，无需开通网银，没有支付宝也可支付。
                                </p>
                            </div>
                        </div>
                    </div>
                    <div id="sub4" style="display: none">ddd</div>
                </div>
            </div>
        </div>
        <script>
            $(function () {
                $(".pays").click(function () {
                    $.ajax({
             type: "post",
             url: "PayHandler1.ashx",
             contenType: "application/json;charset-utf-8",
             dataType: "text",
             data: {},
             success: function (data) {
                 if (data == 0) {
                     var txt = "亲！会员服务已成功开通哦！";
                    window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.success);
                 } 
             }
         })
                })
            })
        </script>
        <script>	$('#close').click(function () {
                $('#pay_w').hide();
            });

            $('#has_pay').click(function () {
                $('#pay_w').hide();
            });
            $('#repay').click(function () {
                window.location.href = "/vip/power"
            });


            $('#l1').click(function () {
                $('.subs2').toggleClass('subs1').toggleClass('subs2');
                $('#sub1').slideToggle();
                $('#l1').toggleClass('subs2').toggleClass('subs1');
                $('#sub2').hide();
                $('#sub3').hide();
                $('#sub4').hide();
            });
            $('#l2').click(function () {
                $('.subs2').toggleClass('subs1').toggleClass('subs2');
                $('#sub2').slideToggle();
                $('#l2').toggleClass('subs2').toggleClass('subs1');
                $('#sub1').hide();
                $('#sub3').hide();
                $('#sub4').hide();
            });
            $('#l3').click(function () {
                $('.subs2').toggleClass('subs1').toggleClass('subs2');
                $('#sub3').slideToggle();
                $('#l3').toggleClass('subs2').toggleClass('subs1');
                $('#sub2').hide();
                $('#sub1').hide();
                $('#sub4').hide();
            });
            $('#l4').click(function () {
                $('.subs2').toggleClass('subs1').toggleClass('subs2');
                $('#sub4').slideToggle();
                $('#l4').toggleClass('subs2').toggleClass('subs1');
                $('#sub2').hide();
                $('#sub3').hide();
                $('#sub1').hide();
            });
        </script>
    </div>
</asp:Content>
