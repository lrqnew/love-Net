<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hongniang.aspx.cs" Inherits="ZhiAiWang.UI.Hongniang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/public.css" rel="stylesheet" />
    <link href="css/forms.css" rel="stylesheet" />
    <link href="css/Hongniang.css" rel="stylesheet" />
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/xcConfirm.js"></script>
    <link href="css/xcConfirm.css" rel="stylesheet" />
    <link href="css/index.css" rel="stylesheet" />
    <script>
        $(function () {
            $(".tanchu").click(function () {
               $(".hnzsform").css("display", "block");
            })
              $("input[name=qx]").click(function () {
                $(".hnzsform").css("display", "none");
            });
              $("input[name=qd]").click(function () {

                 if ($("#asset").val() == 0) {
                            var txt = "请填写资产状况！";
                    window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.confirm);
                            return false;
                }
                if ($("#s1").val() == 0) {
                            var txt = "请选择所在地！";
                    window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.confirm);
                            return false;
                }
                $.ajax({
                    url: 'applylovers.ashx',
                    type: 'post',
                    success: function (res) {
                      
                        if (res == 0) {
                            var txt = "亲！服务已申请!请不要重复申请哦！";
                            window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.success);
                        }
                        else if (res == 1) {
                            var txt = "申请失败！";
                            window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.confirm);
                        }
                        else {
                            var txt = "亲！服务已申请!请等待客服人员与您联系！";
                            window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.success);
                        }
                      
                    }
                })
                    
            });

            
        })
    </script>
    <div>
        <div class="hnbanner">
            <img src="images/hongniang/hnbanner.jpg" alt="">
            <div class="sqhnfw">
                <input class="tanchu" class="ajax_vip" value="申请红娘专属服务" type="button"/>
            </div>
        </div>

        <div class="hnjs">
            <ul>
                <li>
                    <img src="images/hongniang/qiu1.png" alt="" width="160" height="160">
                    <h3>行业高手</h3>
                    <p>尊享专业团队式贴心服务</p>
                </li>
                <li>
                    <img src="images/hongniang/qiu2.png" alt="" width="160" height="160">
                    <h3>一站式服务</h3>
                    <p>一对一全国跟踪服务</p>
                </li>
                <li>
                    <img src="images/hongniang/qiu3.png" alt="" width="160" height="160">
                    <h3>高成功率服务</h3>
                    <p>量身定制征婚方案</p>
                </li>
                <li>
                    <img src="images/hongniang/qiu4.png" alt="" width="160" height="160">
                    <h3>全国范围内猎婚</h3>
                    <p>全国范围内精准匹配相亲对象</p>
                </li>
            </ul>
        </div>
        <div class="vipbj">
            <div class="yzvip">
                <h2>优质会员</h2>
                <p><a href="/vip/index">更多</a></p>
                <div class="viplist">
                    <ul>
                        <li><a href="/vip/detail/id/721" target="_blank">
                            <img src="images/hongniang/100721_1.jpg" alt="" width="263" height="329">
                            <div class="vipxq">
                                <p class="vipbt">疯狂的悠悠</p>
                                <p class="vipshe"><span>1981</span><span>浙江</span><span>杭州</span></p>
                            </div>
                        </a></li>
                        <li><a href="/vip/detail/id/720" target="_blank">
                            <img src="images/hongniang/100720_1.jpg" alt="" width="263" height="329">
                            <div class="vipxq">
                                <p class="vipbt">猪00</p>
                                <p class="vipshe"><span>1985</span><span>浙江</span><span>杭州</span></p>
                            </div>
                        </a></li>
                        <li><a href="/vip/detail/id/719" target="_blank">
                            <img src="images/hongniang/100719_1.jpg" alt="" width="263" height="329">
                            <div class="vipxq">
                                <p class="vipbt">子仔</p>
                                <p class="vipshe"><span>保密</span><span>浙江</span><span>湖州</span></p>
                            </div>
                        </a></li>
                        <li><a href="/vip/detail/id/718" target="_blank">
                            <img src="images/hongniang/100718_1.jpg" alt="" width="263" height="329">
                            <div class="vipxq">
                                <p class="vipbt">地上的玫瑰</p>
                                <p class="vipshe"><span>1985</span><span>江西</span><span>南昌</span></p>
                            </div>
                        </a></li>
                        <li><a href="/vip/detail/id/717" target="_blank">
                            <img src="images/hongniang/100717_1.jpg" alt="" width="263" height="329">
                            <div class="vipxq">
                                <p class="vipbt">橘子</p>
                                <p class="vipshe"><span>1990</span><span>湖北</span><span>武汉</span></p>
                            </div>
                        </a></li>
                        <li><a href="/vip/detail/id/716" target="_blank">
                            <img src="images/hongniang/100716_1.jpg" alt="" width="263" height="329">
                            <div class="vipxq">
                                <p class="vipbt">筱熙</p>
                                <p class="vipshe"><span>1985</span><span>江苏</span><span>无锡</span></p>
                            </div>
                        </a></li>
                        <li><a href="/vip/detail/id/715" target="_blank">
                            <img src="images/hongniang/100715_1.jpg" alt="" width="263" height="329">
                            <div class="vipxq">
                                <p class="vipbt">Abby女神</p>
                                <p class="vipshe"><span>1990</span><span>山西</span><span>大同</span></p>
                            </div>
                        </a></li>
                        <li><a href="/vip/detail/id/691" target="_blank">
                            <img src="images/hongniang/100691_1.jpg" alt="" width="263" height="329">
                            <div class="vipxq">
                                <p class="vipbt">我是一只小鸟</p>
                                <p class="vipshe"><span>1971</span><span>江苏</span><span>苏州</span></p>
                            </div>
                        </a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div >
            <div class="clear"></div>
            <div class="guwen">
                <div class="row">
                    <div class="wow pulse bg-blue" data-wow-iteration="5" data-wow-duration="0.25s" data-wow-delay="2s">
                        <h3>婚恋专家顾问</h3>
                    </div>
                </div>
                <p>中国红娘网高端婚恋专家团队，帮助您解读人生</p>
                <div class="xinbj"></div>
                <!-- 更多 -->
                <p class="more"><a href="/teacher/lists">更多</a></p>
                <!-- 更多 -->
                <div class="wow rollIn bg-red" data-wow-delay="0.5s">
                    <div class="scrolllist" id="s1a">
                        <a class="abtn aleft" href="#left" title="左移"></a>
                        <div class="imglist_w">
                            <ul class="imglist" style="left: -1216px;">
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=10">-->
                                    <a href="/teacher/detail/id/10" target="_blank">
                                        <img src="images/hongniang/100011_0.jpg" alt="">
                                        <p class="gwname">吴芳</p>
                                        <p>幸福婚恋导师</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=11">-->
                                    <a href="/teacher/detail/id/11" target="_blank">
                                        <img src="images/hongniang/1000121_0.jpg" alt="">
                                        <p class="gwname">蔡敏</p>
                                        <p>高端婚姻顾问</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=13">-->
                                    <a href="/teacher/detail/id/13" target="_blank">
                                        <img src="images/hongniang/100014_0.jpg" alt="">
                                        <p class="gwname">洪枔</p>
                                        <p>高端婚姻顾问</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=14">-->
                                    <a href="/teacher/detail/id/14" target="_blank">
                                        <img src="images/hongniang/100048_0.jpg" alt="">
                                        <p class="gwname">陈琴</p>
                                        <p>高端婚恋指导师</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=15">-->
                                    <a href="/teacher/detail/id/15" target="_blank">
                                        <img src="images/hongniang/100011_0.jpg" alt="">
                                        <p class="gwname">王勤</p>
                                        <p>高端婚恋顾问</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=16">-->
                                    <a href="/teacher/detail/id/16" target="_blank">
                                        <img src="images/hongniang/100012_0.jpg" alt="">
                                        <p class="gwname">徐兰</p>
                                        <p>幸福婚恋导师</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=17">-->
                                    <a href="/teacher/detail/id/17" target="_blank">
                                        <img src="images/hongniang/100014_0.jpg" alt="">
                                        <p class="gwname">王绒</p>
                                        <p>高端婚恋顾问</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=18">-->
                                    <a href="/teacher/detail/id/18" target="_blank">
                                        <img src="images/hongniang/100048_0.jpg" alt="">
                                        <p class="gwname">何霞</p>
                                        <p>高端婚恋顾问</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=19">-->
                                    <a href="/teacher/detail/id/19" target="_blank">
                                        <img src="images/hongniang/100015_0.jpg" alt="">
                                        <p class="gwname">韩梅</p>
                                        <p>幸福婚恋导师</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=20">-->
                                    <a href="/teacher/detail/id/20" target="_blank">
                                        <img src="http://www.hongniang.com/vip-new/images-hongniang/100017_0.jpg" alt="">
                                        <p class="gwname">金琳</p>
                                        <p>幸福婚恋导师</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=21">-->
                                    <a href="/teacher/detail/id/21" target="_blank">
                                        <img src="http://www.hongniang.com/vip-new/images-hongniang/100018_0.jpg" alt="">
                                        <p class="gwname">闻文</p>
                                        <p>高端婚恋指导师</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=22">-->
                                    <a href="/teacher/detail/id/22" target="_blank">
                                        <img src="http://www.hongniang.com/vip-new/images-hongniang/100019_0.jpg" alt="">
                                        <p class="gwname">王涓</p>
                                        <p>高端婚恋指导师</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=24">-->
                                    <a href="/teacher/detail/id/24" target="_blank">
                                        <img src="http://www.hongniang.com/vip-new/images-hongniang/100021_0.jpg" alt="">
                                        <p class="gwname">陈艳</p>
                                        <p>高端婚恋顾问高端</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=25">-->
                                    <a href="/teacher/detail/id/25" target="_blank">
                                        <img src="http://www.hongniang.com/vip-new/images-hongniang/100022_0.jpg" alt="">
                                        <p class="gwname">倪佳</p>
                                        <p>高端婚姻顾问</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=26">-->
                                    <a href="/teacher/detail/id/26" target="_blank">
                                        <img src="http://www.hongniang.com/vip-new/images-hongniang/100024_0.jpg" alt="">
                                        <p class="gwname">余群</p>
                                        <p>高端婚恋顾问</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=27">-->
                                    <a href="/teacher/detail/id/27" target="_blank">
                                        <img src="http://www.hongniang.com/vip-new/images-hongniang/100026_0.jpg" alt="">
                                        <p class="gwname">胡婕</p>
                                        <p>高端婚恋顾问</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=29">-->
                                    <a href="/teacher/detail/id/29" target="_blank">
                                        <img src="http://www.hongniang.com/vip-new/images-hongniang/100034_0.jpg" alt="">
                                        <p class="gwname">张宁</p>
                                        <p>高端婚恋顾问</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=30">-->
                                    <a href="/teacher/detail/id/30" target="_blank">
                                        <img src="http://www.hongniang.com/vip-new/images-hongniang/100035_0.jpg" alt="">
                                        <p class="gwname">马丽</p>
                                        <p>高端婚恋指导师</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=32">-->
                                    <a href="/teacher/detail/id/32" target="_blank">
                                        <img src="http://www.hongniang.com/vip-new/images-hongniang/100038_0.jpg" alt="">
                                        <p class="gwname">吴明</p>
                                        <p>高端婚恋顾问</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=34">-->
                                    <a href="/teacher/detail/id/34" target="_blank">
                                        <img src="http://www.hongniang.com/vip/images-hongniang/100052_0.jpg" alt="">
                                        <p class="gwname">陶璐</p>
                                        <p>高端婚恋顾问</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=35">-->
                                    <a href="/teacher/detail/id/35" target="_blank">
                                        <img src="http://www.hongniang.com/vip-new/images-hongniang/100041_0.jpg" alt="">
                                        <p class="gwname">蔡珍</p>
                                        <p>高端婚恋顾问</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=36">-->
                                    <a href="/teacher/detail/id/36" target="_blank">
                                        <img src="http://www.hongniang.com/vip-new/images-hongniang/100043_0.jpg" alt="">
                                        <p class="gwname">邵燕</p>
                                        <p>高端婚恋顾问</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=37">-->
                                    <a href="/teacher/detail/id/37" target="_blank">
                                        <img src="http://www.hongniang.com/vip-new/images-hongniang/100044_0.jpg" alt="">
                                        <p class="gwname">徐敏</p>
                                        <p>高端婚恋顾问</p>
                                    </a></li>
                                <li>
                                    <!--
                <a href="?g=Home&m=teacher&a=detail&id=38">-->
                                    <a href="/teacher/detail/id/38" target="_blank">
                                        <img src="http://www.hongniang.com/vip-new/images-hongniang/100045_0.jpg" alt="">
                                        <p class="gwname">刘琴</p>
                                        <p>高端婚恋顾问</p>
                                    </a></li>
                            </ul>
                            <!--imglist end-->
                        </div>
                        <a class="abtn aright" href="#right" title="右移"></a>
                    </div>
                   <form action="#" method="post" enctype="multipart/form-data">

            <% if (Session["uid"] == null)
                {%>
            <script>
                $(".tanchu").click(function () {
                    var txt=  "亲！请先登录吧！";
					window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.info);
                });
            </script>
            <%}
                else
                {%>
                      <% if (Session["member"].ToString() == "False")
                {%>
            <script>
                $(".tanchu").click(function () {
                    var txt=  "亲！你还不是致爱的超级会员哦！可以在个人中心开通会员哦！";
                    window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.info);
                    return;
                });
            </script>
            <%}
                else
                {%>
                    <!--scrolllist end-->
                    <div class="hnzsform" style="display: none; position: fixed; z-index: 9999; top: 50%; left: 50%; margin-left: -177px; margin-top: -269px; background-image:url(images/Acivit/弹框背景.png)">
                        <h2>申请红娘专属服务</h2>
                        <div class="formde">
                            
                                <input name="uid" value="" type="hidden"/>
                                <ul class="ul1">
                                    <li><span>真实姓名：</span>
                                        <input class="username" name="name" value="<%=Session["uid"] %>" type="text"/>
                                    </li>
                                    <li><span>性别：</span>
                                        <input name="sex" value="2" type="hidden"/><%=Session["Sex"] %>                                        
                                    </li>
                                    <li><span>出生年份：</span>
                                        <input name="birth" value="1997-04-09" type="hidden"/><%=Session["birthday"] %>                                       
                                    </li>
                                    <li><span>手机号：</span> <i class="hidden_phone1" data-type="1">
                                        <input id="phone1" class="phone1" name="phone" value="<%=Session["tel"] %> " readonly="" style="width: 120px; float: left; margin-left: 5px;" type="text"/>
                                        <input class="mobile_type" name="type" value="1" type="hidden"/>
                                        <span class="replace" style="font-size: 12px; background: #d86ea3; text-align: center; padding: 0; color: #fff; border-radius: 5px; margin-left: 4px; cursor: pointer;">更改手机
                                        </span></i><i class="replace_phone" style="display: none;">
                                            <input id="phone" class="phone1" name="phone" value="" style="width: 120px; float: left; margin-left: 5px;" type="text">
                                            <span class="bander_phone" style="font-size: 12px; background: #d86ea3; text-align: center; padding: 0; color: #fff; border-radius: 5px; cursor: pointer; margin-left: 4px;">使用绑定手机号
                                            </span></i></li>
                                    <i class="replace_phone" style="display: none;">
                                        <li><span>验证码：</span>
                                            <input class="txt" name="verify" placeholder="输入图片验证码" style="width: 105px; margin: 0 5px; float: left; line-height: 40px;" type="text"><img class="verify_img" src="/index.php?g=api&amp;m=checkcode&amp;a=index&amp;length=4&amp;font_size=16&amp;width=130&amp;height=40&amp;use_noise=1&amp;use_curve=0" onclick="this.src='/index.php?g=api&amp;m=checkcode&amp;a=index&amp;length=4&amp;font_size=16&amp;width=130&amp;height=40&amp;use_noise=1&amp;use_curve=0&amp;time='+Math.random();" style="cursor: pointer;"
                                                title="点击获取">
                                        </li>
                                        <li><span>手机验证：</span>
                                            <input name="sms_verify" class="sms_verify" value="" style="width: 105px; float: left; margin: 0 5px;" type="text">
                                            <button href="javascript:;" class="huoqu" id="hqyzm" reqtype="vip" ticking="" style="line-height: 40px; width: 130px; padding: 0; margin: 0" bindclick="true">
                                                获取验证码
                                            </button>
                                        </li>
                                    </i>
                                    <li><span>资产状况：</span>
                                        <select id="asset" class="asset" name="asset">
                                            <option value="0">请选择</option>
                                            <option value="1">1-5万元</option>
                                            <option value="2">5-10万元</option>
                                            <option value="3">10-15万元</option>
                                            <option value="4">15-20万元</option>
                                            <option value="5">20-35万元</option>
                                            <option value="6">35-50万元</option>
                                            <option value="7">50-100万元</option>
                                            <option value="8">100万元以上</option>
                                        </select>
                                    </li>
                                    <li id="city_1"><span>所在地：</span>
                                        <select id="s1" style="width:251px;" class="prov province" name="workprovince">
                                            <option value="">请选择</option>
                                            <option value="北京">北京</option>
                                            <option value="天津">天津</option>
                                            <option value="河北">河北</option>
                                            <option value="山西">山西</option>
                                            <option value="内蒙古">内蒙古</option>
                                            <option value="辽宁">辽宁</option>
                                            <option value="吉林">吉林</option>
                                            <option value="黑龙江">黑龙江</option>
                                            <option value="上海">上海</option>
                                            <option value="江苏">江苏</option>
                                            <option value="浙江">浙江</option>
                                            <option value="安徽">安徽</option>
                                            <option value="福建">福建</option>
                                            <option value="江西">江西</option>
                                            <option value="山东">山东</option>
                                            <option value="河南">河南</option>
                                            <option value="湖北">湖北</option>
                                            <option value="湖南">湖南</option>
                                            <option value="广东">广东</option>
                                            <option value="广西">广西</option>
                                            <option value="海南">海南</option>
                                            <option value="重庆">重庆</option>
                                            <option value="四川">四川</option>
                                            <option value="贵州">贵州</option>
                                            <option value="云南">云南</option>
                                            <option value="西藏">西藏</option>
                                            <option value="陕西">陕西</option>
                                            <option value="甘肃">甘肃</option>
                                            <option value="青海">青海</option>
                                            <option value="宁夏">宁夏</option>
                                            <option value="新疆">新疆</option>
                                            <option value="香港">香港</option>
                                            <option value="澳门">澳门</option>
                                            <option value="台湾">台湾</option>
                                            <option value="国外">国外</option>
                                        </select>
                                        
                                    </li>
                                </ul>
                                <div class="hnzstib">
                                    <br />
                                    <input value="申请服务" name="qd" style="background-image: url(images/Acivit/9zkauf0w.bmp)" class="hntijiao" type="button" />
                                    <input value="取消" name="qx" style="background-image: url(images/Acivit/9zkauf0w.bmp)" class="hnquxiao" type="button" />
                                    
                                </div>
                                <div class="err-tip" style="text-align: center"></div>
                            
                        </div>
                    </div>
                       <%}%>
                        <%}%>
        </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
