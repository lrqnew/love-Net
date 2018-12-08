<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pay1.aspx.cs" Inherits="ZhiAiWang.UI.pay1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style2.css" rel="stylesheet" />
    <script src="js/jquery-3.2.1.min.js"></script>
    <script >
        $(function () {
            
            $("#subBtn").click(function () {
                var prices = $("#ymoney").text();
                window.location.href = "pay2.aspx?prices=" + prices;
            });
        });
    </script>
    <style type="text/css">
        .cpon {
            width: 815px;
            overflow: auto;
            float: left
        }

            .cpon ul li {
                width: 250px;
                height: 130px;
                background: url(http://www.hongniang.com/public/home/images/coupon.png);
                float: left;
                margin: 5px 10px;
            }

        .vipyh {
            float: right
        }

            .vipyh i {
                width: 16px;
                height: 16px;
                background: url(/public/home/images/quan.png) no-repeat;
                display: block;
                float: left;
                margin: 23px 10px
            }

                .vipyh i.on {
                    background: url(/public/home/images/memberadd.png) no-repeat;
                }

        .hnyus {
            float: left
        }

            .hnyus select {
                color: #A8A8A8
            }

        #vipyh2 {
            display: none
        }

        #sdbtn {
            background: #2db3a6;
            padding: 6px;
            color: #fff;
            border: none;
            font-size: 12px;
            border: solid 1px #2db3a6;
            border-radius: 5px;
        }
    </style>
    
    <%--<script>
        $(function () {
            alert();
        });
    </script>--%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pay">
        <div class="title" style="border-bottom: 0; height: initial; line-height: initial;">
            
            <div class="left" style="width: 1100px; clear: both; height: 60px; line-height: 60px; margin-left: 0; padding: 0 45px; border-bottom: 1px dotted #E5E5E5;">红娘会员12个月<div class="money1" style="border-right: 0; height: initial;">
                <span><asp:Label ID="Label1" runat="server" Text=''></asp:Label></span>元</div>
            </div>
            <div class="right">
                <!-- 我的优惠券开始 -->
                <div class="wdcoupon" style="border-bottom: 1px dotted #E5E5E5; width: 1100px; padding: 0 45px; text-align: right; padding-top: 10px; padding-bottom: 25px; overflow: auto; position: relative;">
                    <input id="coupon" checked="checked" type="checkbox">
                    <label for="coupon">使用优惠券：</label>
                    <!-- 我的优惠券验证码开始 -->
                    <div class="yzmcoupon" id="yzmcoupon" style="width: 595px; padding: 20px 15px 15px 20px; margin-left: 400px; margin-top: 10px; display: block;">
                        <div class="vipyh" id="vipyh1">
                            <!--<i></i>-->
                            <div class="hnyus">红娘优惠券：<select style="padding: 5px 10px;" onchange="ticketnumber()" id="sel_num">
                                <option value="" selected="selected">不使用优惠券</option>
                            </select>
                                <span style="min-width: 60px; color: red; font-size: 16px; text-align: right; margin-top: 20px; display: inline-block;" id="jmoney">-0￥</span> </div>
                        </div>
                        <div style="clear: both"></div>
                        <div class="vipyh" id="vipyh2">
                            <!--<i></i>-->
                            <div class="hnyus"><span>红娘优惠券：</span>
                                <input placeholder="请输入券号" style="border: solid 1px #AAA2A2; padding: 4px 10px" class="coupon_num" type="text">
                                <a href="javascript:void(0)" style="background: #2db3a6; color: #fff; font-size: 14px; padding: 2px 10px" class="yz_coupon">验证</a> <span style="min-width: 60px; color: red; font-size: 16px; text-align: right; margin-top: 20px; display: inline-block;" id="jmoney" class="q_jmoney">-0￥</span> </div>
                        </div>
                        <div style="width: 300px; margin-top: 20px; float: right">
                            <span style="font-size: 12px; color: #F00; margin-right: 35px; position: absolute;" class="p_error"></span>
                            <input value="手动输入" id="sdbtn" style="position: absolute; right: 53px; top: 79px;"
                                type="button">
                        </div>
                    </div>
                    <!-- 我的优惠券验证码结束 -->
                    <!-- 优惠券展示开始 -->
                    <div class="yycoupon" id="yycoupon" style="margin-top: 10px; display: none; font-size: 14px;"></div>
                    <!-- 优惠券展示结束 -->
                </div>
                <!-- 我的优惠券结束 -->
                <form action="/payment/payment" method="post" id="submit_form">
                    <div class="money1" style="border-bottom: 1px dotted #E5E5E5; width: 1100px; padding: 0 45px; text-align: right; height: 60px; line-height: 60px;">应付<span id="ymoney"><asp:Label ID="Label2" runat="server" Text=''></asp:Label></span>元</div>
                    <input id="service_id" name="id" value="3" type="hidden"/>
                    <input id="ticketnumber" name="ticketnumber" value="" type="hidden"/>
                    <a href="#"><%--pay2.aspx--%>
                    <input id="subBtn" value="提交订单" style="background-color: #2db3a6; padding: 5px 20px 4px; font-size: 20px; font-weight: 400; border: 0; color: #fff; float: right; margin-top: 20px; margin-bottom: 20px; margin-right: 45px; border-radius: 5px;" type="button"/>
                        </a>
                </form>
            </div>
            <script type="text/javascript">
                //$("#ticketnumber").val('');
                $("#erro1").hide();
                $("#yycoupon").hide();
                var j_money = "0";
                var n_money = "298";
                var t_number = "" ? "" : '';
                //alert(ticketnumber);
                var money = "298.00";
                //         $("#yzan").click(function(){
                // var html  = $(this).html();
                //             var sryhq = $("#sryhq").val();
                //             if(sryhq==''){
                //                 $("#erro1").show();
                //  $("#yycoupon").html('').hide();
                //  $("#ticketnumber").val('');
                //  $("#jmoney").html('-0￥');
                //  $("#ymoney").html(money);
                //             }else{
                //  if(html == '验证优惠券'){
                //      $(this).html('验证中...');
                //      $.post("/payment/coupon",{ticketnumber:sryhq},function(data){
                //          if(data.error > 0){
                //              $("#erro1").html(data.msg).show();
                //              $("#yycoupon").html('').hide();
                //              $("#ticketnumber").val('');
                //              $("#jmoney").html('-0￥');
                //              $("#ymoney").html(money);
                //          }else{
                //              $("#erro1").hide();
                //              $("#yycoupon").html('<span style="color: #666; margin-right: 10px;">优惠券号：'+data.msg.ticketnumber+'</span><span style="color: #666; margin-right: 10px;">名称：'+data.msg.name+'</span><span style="color: #666;">金额：'+data.msg.money+'元</span>').show();
                //              $("#ticketnumber").val(data.msg.ticketnumber);
                //              $("#jmoney").html('-'+data.msg.money+'￥');
                //              var ymoney = money - data.msg.money;
                //              ymoney = ymoney.toFixed(2);
                //              $("#ymoney").html(ymoney);
                //          }
                //          $("#yzan").html('验证优惠券');
                //      },'json');
                //  }else{
                //      return;
                //  }
                //             }
                //         })

                $('#yzmcoupon').css('display', 'block')
                $("#coupon").click(function () {

                    $('#yzmcoupon').slideToggle('slow');

                    if ($(this).is(':checked') == false) {
                        $("#erro1").hide();
                        $("#yycoupon").html('').hide();
                        $("#ticketnumber").val('');
                        $("#sryhq").val('');
                        $("#jmoney").html('-0￥');
                        $("#ymoney").html(money);
                    }
                    if ($(this).is(':checked') == true) {
                        //alert(ticketnumber);
                        // $("#ticketnumber").val(t_number);
                        // $("#sryhq").val('');
                        // $("#jmoney").html('-'+j_money+'￥');
                        // $("#ymoney").html(n_money);
                        ticketnumber();
                    }

                })

                function ticketnumber() {
                    var c_number = $("#sel_num").val();
                    var service_id = $("#service_id").val();
                    if (c_number != '') {
                        var url = "/payment/ajax_money";
                        $.ajax({
                            url: url,
                            data: { 'c_number': c_number, 'service_id': service_id },
                            type: 'post',
                            success: function (data) {
                                if (data.code == 1) {
                                    var r_money = data.data.money;
                                    $("#ticketnumber").val(c_number);
                                    $("#jmoney").html('-' + r_money + '￥');
                                    $("#ymoney").html(data.now_money);
                                } else {
                                    alert('使用错误！');
                                }

                            },
                            error: function () {

                            }
                        })
                    } else {
                        $("#ticketnumber").val('');
                        $("#jmoney").html('-0￥');
                        $("#ymoney").html(money);
                    }
                }

                //券号验证
                $('.yz_coupon').click(function () {
                    $('.p_error').text('');
                    var coupon_num = $('.coupon_num').val();
                    var service_id = $("#service_id").val();
                    if (coupon_num == '') {
                        $('.p_error').text('券号不能为空');
                        return false;
                    }
                    $.ajax({
                        data: { 'tick': coupon_num, 'serve_id': service_id },
                        type: 'post',
                        url: '/payment/search_tick',
                        success: function (data) {
                            if (data.code == 0) {
                                $('.p_error').text(data.msg);
                                return false;
                            } else if (data.code == 2) {
                                $('.p_error').text(data.msg);
                                return false;
                            } else if (data.code == 1) {
                                var r_money = data.info[0]['money'];
                                $("#ticketnumber").val(data.info[0]['ticketnumber']);
                                $(".q_jmoney").html('-' + r_money + '￥');
                                $("#ymoney").html(data.price);
                            }
                        },
                        error: function () {

                        }
                    })
                })

            </script>
            <div style="clear: both;"></div>
        </div>
    </div>
</asp:Content>
