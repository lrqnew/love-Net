<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="regested.aspx.cs" Inherits="ZhiAiWang.UI.regested" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <style>
        /*辅助样式*/
        .spanInit {
    width:180px;
    height: 61px;
    line-height: 61px;
    display: block;
    float:left;
    padding-left:15px;
    background-repeat: no-repeat;
    background-position: left;
    color: #f00;
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

       
        /*辅助样式结束*/
        .basic {
    width: 100%;
    background: #f6f7f7;
}
        .basic_w {
    width: 1190px;
    margin: 0 auto;
  
 
}
        .basic_w h3 {
    font-size: 24px;
    color: #666;
    font-weight: normal;
    line-height: 100px;

}
        .basic_w h3 span {
    font-size: 14px;
    color: #666;
    display: inline-block;
    margin-left: 25px;
}
        .basic_w .basic_wb {
    padding-bottom: 25px;
}
        .basic_w .basic_wb .basic_wbl {
    height: 1040px;
}
        .basic_w .basic_wb .basic_wbl {
    background: #fff;
    border: #e0e0e0 1px solid;
    width: 853px;
    height:1100px;
}
        .fl {
    float: left;
    height:auto;
}
        .banner-container {
    height: 250px;
}
        .reg-box {
    height: 200px;
    padding-top: 40px;
      position: inherit;
    width: 660px;
    margin: 0 auto;
     right: 20px;
    top: 80px;
    
    color: #fff;
    z-index: 10;
    font-size: 14px;
    background: #fff;
}


.reg-container {
    width: 470px;
    position: relative;
    height:auto;
z-index: 2;
}


.reg-box .reg-items {
    padding: 0;
    margin-left: 25px;
padding: 10px 0 14px 0;
height: 36px;
}


.reg-items .items-name {
    position: relative;
    zoom: 1;
    display: inline-block;
    vertical-align: middle;
    line-height: 36px;
    float: left;
    color: #666;
    font-size: 14px;
}
span.items-name {
    margin-right: 20px;
}
.reg-items .items-value {
    float: left;
    position: relative;
    zoom: 1;
    width: 286px;
    *width: auto;
}

.reg-items .iRadio, .reg-items .iCheck {
    float: left;
    line-height: 36px;
    color: #666;
    cursor: pointer;
}
.reg-items .iCheck.cur i {
    background-position: 0 -98px;
}
.reg-items .iCheck i {
    display: inline-block;
    vertical-align: middle;
    margin-right: 5px;
    width: 16px;
    height: 16px;
    background-position: 0 -1px;
    overflow: hidden;
}
.reg-items .pl {
    padding-left: 36px;
}
.reg-items .iCheck i {
    display: inline-block;
    vertical-align: middle;
    margin-right: 5px;
    width: 16px;
    height: 16px;
    background-position: 0 -1px;
    overflow: hidden;
}
.basic_w .basic_wb .basic_wbl .basic_wblc {
    width: 740px;
    margin: -30px auto;
   
}
.basic_w .basic_wb .basic_wbl .basic_wblbd {
    position: relative;
    margin-bottom: 10px;
    height: 52px;
}
.basic_w .basic_wb .basic_wbl .basic_wblbd p {
    width: 138px;
    height: 52px;
    line-height: 52px;
    margin: 0;
    color: #666;
    font-size: 14px;
    display: block;
    float: left;
    text-align: right;
}

.basic_w .basic_wb .basic_wbl .basic_wblbd {
    position: relative;
    margin-bottom: 10px;
    height: 52px;
}
.basic_w .basic_wb .basic_wbl .basic_wblbd select {
    padding: 15px;
 
    margin-left: 23px;
    width: 216px;
    height: 52px;
    background: #fff;
    line-height: 52px;
    border: #d9d8d8 1px solid;
    border-radius: 5px;
    color: #666;
    font-size: 14px;
    text-align: left;
    float: left;
    padding-left: 26px;
}
.basic_w .basic_wb .basic_wbl .basic_wblbd em {
    width: 34px;
    height: 50px;
    position: absolute;
    top: 1px;
    left: 341px;
    display: block;
    border-radius: 0 5px 5px 0;
}
.basic_w .basic_wb .basic_wbl .basic_wblbd em img {
    width: 35px;
    height: 50px;
    display: block;
    border: none;
}
label.valid {
    background: url('../images/w_cg.png') no-repeat left center;
}
label.error {
    float: left;
    height: 32px;
    font-size: 12px;
    text-align: left;
    margin-top: 10px;
    padding: 0 20px;
    color: #666;
    display: inline-block;
    margin-left: 15px;
    line-height: 32px;
    background: #efe3e3 url('../images/w_sb.png') no-repeat left center;
}
.basic_w .basic_wb .basic_wbl .baic_wbbt {
    background: url(../images/w_btx.png) repeat-x left center;
    width: 667px;
    margin: 8px 0;
}
.basic_w .basic_wb .basic_wbl .baic_wbbt h3 {
    color: #999;
    font-size: 12px;
    background: #fff;
    width: 302px;
    text-align: center;
    margin: 0 auto;
    padding: 0;
    font-weight: normal;
line-height: 100px;
}
.basic_w .basic_wb .basic_wbl .basic_wblbd {
    position: relative;
    margin-bottom: 10px;
    height: 52px;
}
.basic_w .basic_wb .basic_wbl .basic_wblbd input {
    margin-left: 23px;
    width: 183px;
    height: 40px;
    line-height: 40px;
    padding: 5px;
        padding-left: 5px;
    border: #d9d8d8 1px solid;
    border-radius: 5px;
    color: #666;
    font-size: 14px;
    text-align: left;
    text-decoration: none;
    float: left;
    padding-left: 26px;
}
label.tip {
    float: left;
    height: 32px;
    line-height: 32px;
    font-size: 12px;
    text-align: left;
    margin-top: 10px;
    margin-left: 5px;
    padding-left: 15px;
    color: #aaa;
    display: inline-block;
    width: 300px;
    background: url('/public/home/images/w_cg.png') no-repeat left center;
    padding-left: 35px;
}
.basic_w .basic_wb .basic_wbl .w_submit {
    cursor: pointer;
    width: 201px;
    height: 50px;
    line-height: 50px;
    padding: 0;
    text-align: center;
    color: #fff;
    font-size: 18px;
    background: #f77b7b;
    margin: 35px 233px 28px;
    border-radius: 5px;
    margin:0 160px;
}
.basic_w .basic_wb .basic_wbl .w_fwtk1 {
    margin-left: 72px;
    margin-bottom: 40px;
}
.basic_w .basic_wb .basic_wbl #checkbox1 {
    -webkit-appearance: checkbox;
    box-sizing: border-box;
    float: left;
}
.basic_w .basic_wb .basic_wbl .w_fwtk {
    color: #999;
    font-size: 12px;
    margin: 0;
        margin-top: 0px;
        margin-left: 0px;
    float: left;
    margin-left: 2px;
    margin-top: 1px;
}
.basic_w .basic_wb .basic_wbl .w_fwtk a {
    color: #999;
    font-size: 12px;
}
.basic_w .basic_wb .basic_wbl .w_zsxx {
    color: #999;
    font-size: 12px;
    margin: 0;
    text-align: center;
}
.basic_w .basic_wb .basic_wbr {
    width: 314px;
    height: 788px;
    border: #e0e0e0 1px solid;
}
.fr {
    float: right;
}
.clear {
    clear: both;
}
        .chosen-results li
        {
            color:#000;
        }
    </style>
    
    <script>
        $(function () {

            function getFocus($txtObj) {
                $txtObj.removeClass("txtInit").addClass("txtFocus");
                $txtObj.parent().children().eq(2).removeClass("spanBlurOk");
            }
            function loseFocus($txtObj) {
                $txtObj.removeClass("txtFocus").addClass("txtInit");
            }
            //手机号
            $("#mobile").focus(function () {
                getFocus($(this));
            });
            $("#mobile").blur(function () {
                loseFocus($(this));
                checkPhone($(this));
            });

            //账号
            //$("#nickname").trigger("focus");
            //$("#nickname").focus(function () {
            //    getFocus($(this));

            //});
            $("#nickname").blur(function () {
                loseFocus($(this));
                checkNo($(this));

            });
            //密码
            $("#password").focus(function () {
                getFocus($(this));
            });
            $("#password").blur(function () {
                loseFocus($(this));
                checkPwd($(this));
            });
            //确认密码
            $("#w_pass1").focus(function () {
                getFocus($(this));
            });
            $("#w_pass1").blur(function () {
                loseFocus($(this));
                checkConfirm($(this));
            });
            
           
            //邮箱
            $("#email").focus(function () {
                getFocus($(this));
            });
            $("#email").blur(function () {
                loseFocus($(this));
                checkEmail($(this));
            });
            //验证码
            //$("#yanzhenma").focus(function () {
            //    getFocus($(this));
               
            //})
            //$("#yanzhenma").blur(function () {
            //    loseFocus($(this));
            //    //checkYanzhenma($(this));
            //})
        })
        //验证电话号码
        function checkPhone($txtObj) {

            var phoneReg = /^(13|15|18|17|19)\d{9}$/;
            var len = $txtObj.val().length;
            var phone = $txtObj.val();
            if (len == 0) {
                $txtObj.parent().children().eq(2).text("手机号必填");
                return false;
            }
            if (!phoneReg.test($txtObj.val())) {
                $txtObj.parent().children().eq(2).text("手机格式错误");
                return false;
            }
            else {
                $.ajax({
                    type: "post",
                    url: "SelectPhoneHandler.ashx",
                    data: { name: phone },
                    contenType: "application/json;charset-utf-8",
                    dataType: "text",
                    async: false,
                    success: function (data) {
                        if (data == 1) {
                            $txtObj.parent().children().eq(2).text("此手机号码已经被注册！");
                            flag = false;
                        }
                        else {
                            $txtObj.parent().children().eq(2).addClass("spanBlurOk").text("");
                            flag = true;
                        }
                    }
                });


                if (flag == false) {

                    return false;
                }
                else {
                    return true;
                }
            }
        }
        //验证账号：必填，2到12
        function checkNo($txtObj) {
            var len = $txtObj.val().length;
            if (len == 0) {
                $txtObj.parent().children().eq(2).text("账号必填");
                return false;
            }
            if (len < 2 || len > 12) {
                $txtObj.parent().children().eq(2).text("账号的长度在2到12位之间！")
                return false;
            }
            else {
                $txtObj.parent().children().eq(2).addClass("spanBlurOk").text("");
                return true;
            }
        }
        //验证密码
        function checkPwd($txtObj) {
            var len = $txtObj.val().length;
            if (len == 0) {
                $txtObj.parent().children().eq(2).text("密码必填");
                return false;
            }
            if (len < 6 || len > 12) {
                $txtObj.parent().children().eq(2).text("密码长度在6到12位之间");
                return false;
            }
            else {
                $txtObj.parent().children().eq(2).addClass("spanBlurOk").text("");
                return true;
            }
        }
        //验证确认密码
        function checkConfirm($txtObj) {
       
            var pwd = $("#password").val();
            var len = $txtObj.val().length;
            if (len == 0) {
                $txtObj.parent().children().eq(2).text("确认密码必填");
                return false;
            }
            if (pwd != $txtObj.val()) {
                $txtObj.parent().children().eq(2).text("两次密码不一致");
                return false;
            }
            else {
                $txtObj.parent().children().eq(2).addClass("spanBlurOk").text("");
                return true;
            }

        }
        //验证邮箱  
        function checkEmail($txtObj) {
            
            var emailReg = /^(\w)+(\.\w+)*@(\w)+((\.\w{2,3}){1,3})$/;
            var len = $txtObj.val().length;
            var flag = false;
            var email = $txtObj.val();
            if (len == 0) {
                $txtObj.parent().children().eq(2).text("邮箱必填");
                return false;
            }

            if (!emailReg.test($txtObj.val())) {
                $txtObj.parent().children().eq(2).text("邮箱格式错误");
                return false;
            }
            else {
                $.ajax({
                    type: "post",
                    url: "selectEmail.ashx",
                    data: { name: email },
                    contenType: "application/json;charset-utf-8",
                    dataType: "text",
                    async: false,
                    success: function (data) {
                        if (data == 1) {
                            $txtObj.parent().children().eq(2).text("此邮箱已经存在！");
                            flag = false;
                        }
                        else {
                            $txtObj.parent().children().eq(2).addClass("spanBlurOk").text("");
                            flag = true;
                        }

                    }
                })

                if (flag == false) {

                    return false;
                }
                else {
                    return true;
                }
            }
        }
       
        function cheched() {
            var flag = checkNo($("#nickname")) && checkPwd($("#password")) && checkConfirm($("#w_pass1")) && checkEmail($("#email")) && checkPhone($("#mobile"));
            return flag;
        }
    </script>
    <!--基础资料填写开始-->
    <div class="basic">

        <div class="basic_w">
            <h3>基础资料填写<span>完善个人资料可以彰显诚心，资料完善度高的会员可以获得更多被推荐的机会，也会向更多异性体现您的真诚与严肃 </span></h3>
            <div class="basic_wb">
                <!-- 基础资料填写表单提交开始 -->
                <div class="basic_wbl fl">
                    <form id="registerForm" onsubmit="return cheched()"  action="RegesterHandler.ashx" method="post" runat="server">
                        <!--第一步注册-->
                        <section class="banner1" id="baseinfo_box">
                            <div id="jcBrandBanner" class="banner-container">
                                <div class="frameW">
                                    <!-- 新旧注册页分流 -->
                                    <!--<input type="hidden" name="regFlag" value="">-->
                                    <!-- 隐藏域 -->
                                    <section id="jcRegBox" class="reg-box">
                                        <!--<div class="mask"></div>-->
                                        <div class="reg-container">
                                             <div id="ZuiSex" class="reg-items reg-sex clearfix">
                                             <span class="items-name">我的性别：</span>
                                             <input class="gender" type="radio" value="男" name="gende" checked="checked"/><label class="sex">男</label>
                                             <input class="gender" type="radio" value="女" name="gende" /><label class="sex">女</label>
                                        </div>
                                        <div class="reg-items clearfix">
                                            <span class="items-name" >出生日期：</span>
                                            <input type="date" style="margin-top: 5px; padding: 4px;" value="1997-05-27" name="birthday"/>
                                        </div>
                                        <div class="reg-items clearfix">
                                            <span class="items-name">工作地区：</span>
                                            <div class="select">
                                                <select id="country" class="dept_select" name="country"></select>
                                                <select id="province" class="dept_select" name="province"></select>
                                                <select id="city" class="dept_select" name="city"></select>
                                            </div>
                                                  <script type="text/javascript">
                                                      var areaObj = [];
                                                      function initLocation(e) {
                                                          var a = 0;
                                                          for (var m in e) {
                                                              areaObj[a] = e[m];
                                                              var b = 0;
                                                              for (var n in e[m]) {
                                                                  areaObj[a][b++] = e[m][n];
                                                              }
                                                              a++;
                                                          }
                                                      }
                                        </script>
                                        <script src="js/location_chs.js"></script>
                                        <script type="text/javascript">
                                            var country = '';
                                            for (var a = 0; a <= _areaList.length - 1; a++) {
                                                var objContry = _areaList[a];
                                                country += '<option value="' + objContry + '" a="' + (a + 1) + '">' + objContry + '</option>';
                                            }
                                            $("#country").html(country).chosen().change(function () {
                                                var a = $("#country").find("option[value='" + $("#country").val() + "']").attr("a");
                                                var _province = areaObj[a];
                                                var province = '';
                                                for (var b in _province) {
                                                    var objProvince = _province[b];
                                                    if (objProvince.n) {
                                                        province += '<option value="' + objProvince.n + '" b="' + b + '">' + objProvince.n + '</option>';
                                                    }
                                                }
                                                if (!province) {
                                                    province = '<option value="0" b="0">------</option>';
                                                }
                                                $("#province").html(province).chosen().change(function () {
                                                    var b = $("#province").find("option[value='" + $("#province").val() + "']").attr("b");
                                                    var _city = areaObj[a][b];
                                                    var city = '';
                                                    for (var c in _city) {
                                                        var objCity = _city[c];
                                                        if (objCity.n) {
                                                            city += '<option value="' + objCity.n + '">' + objCity.n + '</option>';
                                                        }
                                                    }
                                                    if (!city) {
                                                        var city = '<option value="0">------</option>';
                                                    }
                                                    $("#city").html(city).chosen().change();
                                                    $(".dept_select").trigger("chosen:updated");
                                                });
                                                $("#province").change();
                                                $(".dept_select").trigger("chosen:updated");
                                            });
                                            $("#country").change();
                                            $("button").click(function () {
                                                alert($("#country").val() + $("#province").val() + $("#city").val());
                                            });
                                        </script>
                                        </div>
                                        <div class="reg-items clearfix">
                                            <span class="items-name">婚姻状况：</span>
                                            <input class="hunyin" type="radio" value="未婚" name="hunyin"  checked="checked"  id="wh"/><label class="hyText">未婚</label>
                                            <input class="hunyin" type="radio" value="离异" name="hunyin"  id="ly"/><label class="hyText">离异</label>
                                            <input class="hunyin" type="radio" value="丧偶" name="hunyin"  id="so"/><label class="hyText">丧偶</label>
                                        </div>
                                        </div>
                                    </section>
                                </div>
                            </div>
                        </section>
                        <!--第一步注册结束-->
                        <div class="basic_wblc">
                            <div style="clear: both; height: 30px;"></div>
                            <div class="basic_wblbd form-field">
                                <p>我的身高：</p>
                                 <input name="hight" id="Text1" value="" maxlength="3" placeholder="请输入您的身高(单位：cm)" type="text">
                            </div>
                            <div class="basic_wblbd form-field">
                                <p>我的学历：</p>
                                <select id="education" name="education" class="edu valid" aria-required="true"  aria-invalid="false">
                                    <option value="0">请选择</option>
                                    <option value="高中及以下" >高中及以下</option>
                                    <option value="中专" >中专</option>
                                    <option value="大专">大专</option>
                                    <option value="大学本科" >大学本科</option>
                                    <option value="硕士">硕士</option>
                                    <option value="博士">博士</option>
                                </select>
                                <!-- <span class="w_cw"><img src="/public/home/images/w_sb.png">请选择您的学历</span> <span class="w_cg"><img src="/public/home/images/w_cg.png"></span> <div class="clear"></div> -->
                                <em>
                                    <img src="images/w_select.png"></em> </div>
                            <div class="basic_wblbd form-field">
                                <p>我的年薪：</p>
                                <select id="salary" name="salary" class="yearly valid" aria-required="true" aria-invalid="false">
                                    <option value="0">请选择</option>
                                    <option value="1-5万元">1-5万元</option>
                                    <option value="5-10万元">5-10万元</option>
                                    <option value="10-15万元">10-15万元</option>
                                    <option value="15-20万元">15-20万元</option>
                                    <option value="20-35万元" selected="selected">20-35万元</option>
                                    <option value="35-50万元">35-50万元</option>
                                    <option value="50-100万元">50-100万元</option>
                                    <option value="100万元以上">100万元以上</option>
                                </select>
                                <!-- <span class="w_cw"><img src="/public/home/images/w_sb.png">请选择您的月薪</span> <span class="w_cg"><img src="/public/home/images/w_cg.png"></span> <div class="clear"></div> -->
                                <em>
                                    <img src="images/w_select.png"></em> </div>
                            <!-- 欢迎您加入中国红娘网，我们将真诚为您服务开始 -->
                            <div class="baic_wbbt">
                                <h3>欢迎您加入中国红娘网，我们将真诚为您服务开始</h3>
                            </div>
                            <!-- 欢迎您加入中国红娘网，我们将真诚为您服务结束 -->
                            <div class="basic_wblbd form-field">
                                <p>我的手机号：</p>
                                <input name="mobile" id="mobile" value="" placeholder="请输入您的手机号" type="text">
                                <span class='spanInit'></span>
                              
                            </div>
                              <div class="basic_wblbd form-field">
                                <p>我的邮箱：</p>
                                <input name="email" id="email" value="" placeholder="请输入您的邮箱" type="text">
                               <span class='spanInit'></span>
                            </div>
                            <div class="basic_wblbd form-field">
                                <p>我的密码：</p>
                                <input name="password" id="password" value="" placeholder="请输入您的密码" type="password">
                                <span class='spanInit'></span>
                            </div>
                            <div class="basic_wblbd form-field">
                                <p>确认密码：</p>
                                <input name="re_password" value="" placeholder="请再次输入您的密码" id="w_pass1" type="password">
                                <span class='spanInit'></span>
                            </div>
                            <div class="basic_wblbd form-field">
                                <p>我的昵称：</p>
                                <input name="nickname"  placeholder="请输入您的昵称" id="nickname" type="text">
                                <span class='spanInit'></span>
                                <!-- <span class="w_cw err-tip"><img src="/public/home/images/w_sb.png">请输入您的昵称</span> <span class="w_cg"><img src="/public/home/images/w_cg.png"></span> <div class="clear"></div> -->
                            </div>
                             
                            <input value="免费注册" type="submit" id="btnOK" class="w_submit jaBtnReg" >
                            <!-- 服务条款开始 -->
                            <div class="w_fwtk1 form-field">
                                <input name="agree" value="1" id="checkbox1" checked="checked" style="margin-top: 17px" type="checkbox">
                                <label for="checkbox1" class="w_fwtk" style="margin-top: 17px;">我已经阅读和同意<a href="/rules.html" target="_blank" style="color: #f77b7b;">中国红娘服务条款</a>，并同意将本人提供的信息由中国红娘线上线下服务使用。</label>
                            </div>
                            <!-- 服务条款结束 -->
                            <div style="clear: both"></div>
                            <p class="w_zsxx" style="line-height: 35px;">我承诺年满18岁、单身、抱着严肃的态度，真诚寻找另一半</p>
                        </div>
                    </form>
                </div>
                <!-- 基础资料填写表单提交结束 -->
                <div class="basic_wbr fr">
                    <img src="images/basic.jpg"></div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <!--基础资料填写结束-->
</asp:Content>
