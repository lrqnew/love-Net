<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ZhiAiWang.UI.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户登录</title>
    <style>
        body
        {
            font-size: 14px;
            font-family: "微软雅黑";
            color: #000;
            line-height: 1.7;
        }

        .login .top
        {
            height: 235px;
            background: #f6f7f7; 
        }

            .login .top .logo
            {
                text-align: center;
                position: relative;
                top: 80px;
            }

        a
        {
            text-decoration: none;
            color: #888;
        }

        .top img
        {
            width: 350px;
            margin-left: 170px;
        }

        img
        {
            border: none;
        }

        .login .top .xx
        {
            text-align: center;
            margin: 0px auto;
            position: relative;
            top: 105px;
            color: #666;
        }

            .login .top .xx a
            {
                color: #666;
            }

        .login .main
        {
            padding: 80px 0px;
            background: #fff;
            height: 340px;
        }

            .login .main .bds
            {
                width: 1190px;
                margin: 0px auto;
            }

                .login .main .bds .left
                {
                    width: 470px;
                    margin-left: 126px;
                }

                .login .main .bds .left
                {
                    height: 370px;
                    margin-left: 197px;
                    width: 400px;
                    border-right: 1px #d9d8d8 solid;
                    float: left;
                }

                    .login .main .bds .left form .jzw
                    {
                        clear: both;
                        color: #444;
                    }



                    .login .main .bds .left form .jzw
                    {
                        color: #444;
                    }

                        .login .main .bds .left form .jzw a
                        {
                            float: left;
                            margin-right: 26px;
                        }

                        .login .main .bds .left form .jzw a
                        {
                      
                            color: #2675b2;
                            margin-right: 67px;
                            font-size: 14px;
                        }

                    .login .main .bds .left form .btns
                    {
                        background: #d86ea3;
                        color: #fff;
                        font-size: 18px;
                        width: 330px;
                        line-height: 50px;
                        border: none;
                        margin-top: 20px;
                        -moz-border-radius: 5px;
                        -webkit-border-radius: 5px;
                        border-radius: 5px;
                        cursor: pointer;
                    }

                .login .main .bds .right
                {
                    float: left;
                }

                    .login .main .bds .right .nr
                    {
                        position: relative;
                        top: 45px;
                        left: 120px;
                    }

                        .login .main .bds .right .nr p
                        {
                            text-align: center;
                            margin-top: 10px;
                            color: #444;
                        }

                .login .main .bds .left form .txt
                {
                    float: left;
                }

                .login .main .bds .left form .txt
                {
                    border: 1px #d9d8d8 solid;
                    line-height: 50px;
                    height: 50px;
                    width: 315px;
                    clear: both;
                    display: block;
                    color: #666;
                    font-size: 14px;
                    padding-left: 15px;
                }

        .upload-awrp
        {
            overflow: hidden;
            margin: 120px 0;
        }

        .code
        {
            margin-left: 12px;
            font-family: Arial;
            font-style: italic;
            font-size: 30px;
            border: 0;
            padding: 2px 3px;
            letter-spacing: 3px;
            font-weight: bolder;
            float: left;
            cursor: pointer;
            width: 150px;
            height: 38px;
            line-height:38px;
            text-align: center;
            vertical-align: middle;
            border: 1px solid #6D6D72;
        }
         /*辅助样式*/
        .spanInit {
    width:80px;
    height: 61px;
    line-height: 61px;
    display: block;
    float:left;
    padding-left:15px;
    background-repeat: no-repeat;
    background-position: left;
    color:#d86ea3;
}
       .spanBlurOk
    {
        background-image: url(../images/w_cg.png);
        margin-left:15px;
        width:105px;
    }

        .txtInit
        {
            border: 1px #cecece solid;
        }

        .txtFocus
        {
            border: 1px solid #009;
        }
    </style>
    <script src="js/jquery-3.2.1.min.js"></script>
 <script>
     $(function () {

         function getFocus($txtObj) {
             $txtObj.removeClass("txtInit").addClass("txtFocus");
             $txtObj.parent().children().eq(2).removeClass("spanBlurOk");
         }
         function loseFocus($txtObj) {
             $txtObj.removeClass("txtFocus").addClass("txtInit");
         }
        
         //账号
         $("#mobile").trigger("focus");
         $("#mobile").focus(function () {
             getFocus($(this));

         });
         $("#mobile").blur(function () {
             loseFocus($(this));
             checkNo($(this));

         });
         //密码
         $("#passowrd").focus(function () {
             getFocus($(this));
             checkPwd($(this));
         });
         $("#passowrd").blur(function () {
             loseFocus($(this));
            
         });

        // 验证码
         $("#shuruyz").focus(function () {
             getFocus($(this));

         })
         $("#shuruyz").blur(function () {
             loseFocus($(this));
             checkYzm($(this));
         })
     })
        
     //验证账号：必填，6到12
     function checkNo($txtObj) {
         var len = $txtObj.val().length;
         if (len == 0) {
             $txtObj.parent().children().eq(1).text("账号必填");
             return false;
         }
         else {
             $txtObj.parent().children().eq(1).text("");
             return true;
         }
     }
     function checkYzm($txtObj) {
         var yzm = $txtObj.val();
         if (yzm.length == 0) {
             $txtObj.parent().children().eq(4).text("验证码必填");
             return false;
         }
         else if (yzm.toLowerCase() != $("#data_code").text().toLowerCase()) {
             $txtObj.parent().children().eq(4).text("验证码错误");
             return false;
         }
         else{
             $txtObj.parent().children().eq(4).addClass("spanBlurOk").text("");
             return true;
         }

     }
     //验证密码
     function checkPwd($txtObj) {
         var len = $txtObj.val().length;
        
         if (len == 0) {
             $txtObj.parent().children().eq(1).text("密码必填");
             return false;
         }
         else {
             $txtObj.parent().children().eq(1).text("");
             return true;
         }

     }
     //var b = $('#passowrd').val();
     function a($txtObj) {
         var flag = false;
         $.ajax({
             type: "post",
             url: "LoginHandler.ashx",
             contenType: "application/json;charset-utf-8",
             dataType: "text",
             data: { uid: $("#mobile").val(), pwd: $("#passowrd").val() },
             async: false,
             success: function (data) {
                 if (data == 0) {
                    
                     window.location.replace("index.aspx");
                 }
                 else {
                     flag = false;
                     $txtObj.parent().children().eq(1).text("密码错误");
                 }
             }
         })
         if (flag == false) {

             return false;
         }
         else {
             $txtObj.parent().children().eq(1).text("");
             return true;
         }

     }
     function cheched() {
         var flag = checkNo($("#mobile")) && checkPwd($("#passowrd")) && checkYzm($("#shuruyz")) && a($("#passowrd"));
         return flag;
     }

    </script>
</head>
<body class="home-page page-scroll" style="background: #f6f7f7;">
    <%--<form id="form1" runat="server">--%>
    <div>
        <!--头部开始-->
        <div class="login">
            <div class="top">
                <div class="logo">
                    <a href="/index/index">
                        <img src="images/reg/logo.png" alt=""></a>
                </div>
                <div class="xx">
                    <a href="regested.aspx">注册
                    </a>&nbsp;&nbsp;|&nbsp;&nbsp;
           
                        <a href="login.aspx" style="color: #d86ea3;">登录
                        </a>
                </div>
            </div>
            <div class="main">
                <div class="bds">
                    <div class="left" >
                        <form  onsubmit="return cheched()"  method="post" id="login_form" style="width: 470px ; margin-left:-100px;">
                            <input id="login_type" name="login_type" value="2" style="display: none;" type="hidden">
                            <input name="sync" value="0" type="hidden">
                            <label class="form-field" style="display: block; min-height: 60px; max-height: 120px;">
                                <input id="mobile" class="txt" name="username" value="" placeholder="手机号/邮箱" style="margin-bottom: 0px; height: 50px;" type="text">
                                 <span class='spanInit'></span>
                            </label>
                            <label class="form-field" style="display: block; min-height: 60px; max-height: 120px;" id="loginhide">
                                <input id="passowrd" class="txt" name="password" value="" placeholder="密码" style="margin-bottom: 0px; height: 50px;" id="yanzheng" type="password">
                                <span class='spanInit'></span>
                            </label>
                          
                            <label class="form-field" style="display: block; min-height: 60px; max-height: 120px">
                                <input class="txt" name="verify" placeholder="请输入验证码" style="width: 145px; margin: 0 0px; float: left; line-height: 40px; margin-bottom: 0px; height: 40px;" id="shuruyz"  type="text"/>
                                <div id="check-code" >
                                    <div class="code" id="data_code" title="点击获取验证码（区分大小写）"></div>
                                </div>
                                <script type="text/javascript">
                                    /**
                                     * 验证码
                                     * @param {Object} o 验证码长度
                                     */
                                    $.fn.code_Obj = function (o) {


                                        var _this = $(this);
                                        var options = {
                                            code_l: o.codeLength,//验证码长度
                                            codeChars: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
                                                'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
                                                'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
                                            ],
                                            codeColors: ['#f44336', '#009688', '#cddc39', '#03a9f4', '#9c27b0', '#5e4444', '#9ebf9f', '#ffc8c4', '#2b4754', '#b4ced9', '#835f53', '#aa677e'],
                                            code_Init: function () {
                                                var code = "";
                                                var codeColor = "";
                                                var checkCode = _this.find("#data_code");
                                                for (var i = 0; i < this.code_l; i++) {
                                                    var charNum = Math.floor(Math.random() * 52);
                                                    code += this.codeChars[charNum];
                                                }
                                                for (var i = 0; i < this.codeColors.length; i++) {
                                                    var charNum = Math.floor(Math.random() * 12);
                                                    codeColor = this.codeColors[charNum];
                                                }
                                                console.log(code);
                                                if (checkCode) {
                                                    checkCode.css('color', codeColor);
                                                    checkCode.className = "code";
                                                    checkCode.text(code);
                                                    checkCode.attr('data-value', code);
                                                }
                                            }
                                        };

                                        options.code_Init();//初始化验证码
                                        _this.find("#data_code").bind('click', function () {
                                            options.code_Init();

                                        });
                                    };
                                </script>
                                <script type="text/javascript">
                                    /**
                                     * 验证码
                                     * codeLength:验证码长度
                                     */
                                    $('#check-code').code_Obj({
                                        codeLength: 5

                                    });

                                </script>
                               <span class='spanInit'></span>
                            </label>
                            <div class="jzw">
                                <label style="float: left; margin-right: 20px;">
                                    <input name="jzw" id="jzw" value="" type="checkbox" runat="server">&nbsp;&nbsp;记住我
                                   
                                </label>
                                <a href="/account/forget">忘记密码？</a> <span style="float: left; color: #2675b2; cursor: pointer" id="loginmore">手机短信登录</span>
                            </div>
                            <!--<input type="button" class="btns" value="登录">-->
                            <button type="submit" class="btns">登录</button>
                            <!-- <div class="fx"> <a href="#"><img src="/public/home/images/dg_fx_1.jpg" alt=""></a> <a href="#"><img src="/public/home/images/dg_fx_2.jpg" alt=""></a> <a href="#"><img src="/public/home/images/dg_fx_3.jpg" alt=""></a> </div> -->
                        </form>
                    </div>
                    <div class="right">
                        <div class="nr">
                            <img src="images/reg/hnweixin.jpg" alt="" style="margin-left: 10px; height: 100%;">
                            <p>
                                扫一扫关注中国红娘微信<br>
                                征婚相亲更方便
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!--    <div class="foot"></div>-->
        </div>
        <!--头部结束-->
    </div>
    <%--  </form>--%>
</body>
</html>
