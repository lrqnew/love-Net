<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ZhiAiWang.UI.regest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/index.css" rel="stylesheet" />
    <style>
        .zcbtn1 {
            width: 200px;
            margin: 10px auto;
            height: 45px;
            background: #8357a6;
            text-align: center;
            line-height: 45px;
            font-size: 18px;
            color: #fff;
            border-radius: 5px;
            display: block;
            cursor: pointer;
            margin-top: 200px;
        }

        dl {
            width: 390px;
            height: 400px;
        }

            dl dt {
                padding: 10px;
                float: left;
            }

            dl dd {
                color: #666;
                font-size: 16px;
            }

        .petName {
            padding-top: 10px;
        }
    </style>
   
    <script>
        //无缝循环滚动
       $(function () {
           //第一个li
           var firstLi = $(" .imglist li").eq(0);
          
           setInterval(function () {
               //第一li的margin-left值
               var marginLeft = parseInt(firstLi.css("margin-left"));
               marginLeft--;
               firstLi.css("margin-left", marginLeft);
               if(marginLeft<-firstLi.width())
               {
                   $(".imglist").append(firstLi);
                   firstLi.css("margin-left", 0);
                   firstLi = $(".imglist li").eq(0);
               }
           }, 25);
          
          
       });
</script>
    <!--banner开始-->
    <div class="bannerbox" style="min-width: 1190px; overflow: hidden;">
        <div style="width: 100%; height: 460px; background: url(images/reg/bannerindex_c.jpg) no-repeat; background-size: 100% 100%; position: relative;">
            <div class="img_post" style="position: absolute; left: 16%">
                <img src="images/reg/bannerindex_c11.png" />
            </div>
            <section class="banner1" style="position: absolute; top: -40px; width: 400px; left: 63%;">
                <div id="jcBrandBanner" class="banner-container">
                    <div class="frameW">
                        <% if (Session["uid"] == null)
                        {%>
                        <form id="reg-form" action="IndexHandler.ashx" method="post">
                            <section id="jcRegBox" class="reg-box">
                                <div class="reg-container">
                                    <h3>快速注册！寻找你心中的TA</h3>
                                    <div id="ZuiSex" class="reg-items reg-sex clearfix">
                                        <span class="items-name">我的性别：</span>
                                        <input class="gender" type="radio" value="男" name="gender" checked="checked" /><label class="sex">男</label>
                                        <input class="gender" type="radio" value="女" name="gender" /><label class="sex">女</label>
                                    </div>
                                    <div class="reg-items clearfix">
                                        <span class="items-name">出生日期：</span>
                                        <input name="birthday" type="date" style="margin-top: 5px; padding: 4px; margin-left: 20px;" value="1997-05-27" />
                                    </div>
                                    <div class="reg-items clearfix">
                                        <span class="items-name">工作地区：</span>
                                        <div class="select">
                                            <select id="country" name="country" class="dept_select"></select>
                                            <select id="province" name="province" class="dept_select"></select>
                                            <select id="city" name="city" class="dept_select"></select>
                                        </div>
                                    </div>
                                    <div class="reg-items clearfix">
                                        <span class="items-name">婚姻状况：</span>
                                        <input class="hunyin" type="radio" value="未婚" name="hun" checked="checked" /><label class="hyText">未婚</label>
                                        <input class="hunyin" type="radio" value="离异" name="hun" /><label class="hyText">离异</label>
                                        <input class="hunyin" type="radio" value="丧偶" name="hun" /><label class="hyText">丧偶</label>
                                    </div>
                                    <div class="reg-items">
                                        <input value="免费注册" id="btnOk" type="submit" class="btnR1 jaBtnReg">

                                        <div style="width: 33px; float: left; margin-right: 5px; margin-top: 5px;">
                                            <img src="images/reg/phoner_05.png" alt="">
                                        </div>
                                        <div style="float: left;">
                                            <p style="color: #666">热线电话</p>
                                            <p style="color: #8086b1">0571-85337299</p>
                                        </div>
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
                                    <script type="text/javascript" src="js/location_chs.js"></script>
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
                            </section>
                        </form>
                        <%}
                        else
                        {%>
                        <section id="Section1" class="reg-box" style="display: block;">
                            <asp:DataList ID="PerInfoDataList" runat="server" OnSelectedIndexChanged="PerInfoDataList_SelectedIndexChanged">
                                <ItemTemplate>
                                    <dl>
                                        <dt>
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#"images/header/"+Eval("headImgUrl") %>' Style="width: 140px; height: 160px;" /></dt>
                                        <dd>
                                            <div class="petName">
                                                <a href="PersonalCenter.aspx">
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("petname") %>'>
                                                </asp:Label></a>
                                                <img src="images/user/mem_rz22.png" />
                                                <img src="images/user/mem_rz1.png" />
                                            </div>

                                        </dd>
                                        <dd>
                                            <asp:Label ID="Label2" runat="server" Text="LoveID:"></asp:Label>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("UserId") %>'></asp:Label>
                                            <a href="PersonalCenter.aspx">完善个人信息</a><br />
                                            <span style="color:#8357a6;font-weight:bold;">欢迎尊敬的：<%=Session["member"].ToString()=="False"?"【致爱网用户】":"【致爱VIP会员】"%></span> </dd>
                                        <dd style="margin-top: -50px;">
                                            <input class="zcbtn1" value="申请红娘服务" onclick="window.location.href = 'Hongniang.aspx';" type="button" />
                                            
                                        </dd>
                                        <dd style="text-align: center;">
                                            <a href="login.aspx">退出登录</a>
                                        </dd>
                                        <div style="border-top: 2px solid #999; width: 370px; height: 50px; margin: 8px auto;">
                                            <dl style="display: block; margin-left: 100px; height: 50px;">
                                                <dt>
                                                    <img src="images/reg/phoner_05.png" /></dt>
                                                <dd style="margin-top: 10px; font-size: 14px;">热线电话
                                                </dd>
                                                <dd style="margin: -5px; color: #8086b1">0571-85337299
                                                </dd>
                                            </dl>
                                        </div>
                                    </dl>
                                </ItemTemplate>
                            </asp:DataList>
                        </section>
                        <%}%>
                    </div>
                </div>
            </section>

        </div>
    </div>
    <!--banner结束-->
    
    <!--分类专区开始-->
    <div class="zhuanqu_box">
        <ul>
            <li class="zq_1 sHoverItem" style="position: relative; overflow: hidden;"><a href="1.aspx" target="_blank">
                <h3>高颜值专区</h3>
                <p>外貌协会，不止看外貌</p>

            </a></li>
            <li class="zq_2 sHoverItem" style="position: relative; overflow: hidden;"><a href="1.aspx" target="_blank">
                <h3>公务员专区</h3>
                <p>为什么那么多人考公务员, 因为好找对象啊!</p>

            </a></li>
            <li class="zq_3 sHoverItem" style="position: relative; overflow: hidden;"><a href="1.aspx" target="_blank">
                <h3>教师专区</h3>
                <p>最光辉的职业，知识分子，擅沟通</p>

            </a></li>
            <li class="zq_4 sHoverItem" style="position: relative; overflow: hidden;"><a href="1.aspx" target="_blank">
                <h3>医护专区</h3>
                <p>嫁给医生,娶个护士,走上人生巅峰</p>

            </a></li>
            <li class="zq_5 sHoverItem" style="position: relative; overflow: hidden;"><a href="1.aspx" target="_blank">
                <h3>厨艺达人专区</h3>
                <p>会做饭的男人,人品都不会太差,一定要嫁给他</p>

            </a></li>
            <li class="zq_6 sHoverItem" style="position: relative; overflow: hidden;"><a href="1.aspx" target="_blank">
                <h3>电影迷专区</h3>
                <p>来来来，手拉手吃爆米花</p>

            </a></li>
            <li class="zq_7 sHoverItem" style="position: relative; overflow: hidden;"><a href="1.aspx" target="_blank">
                <h3>运动达人专区</h3>
                <p>骑车，游泳，跑步，爬山...与你一起</p>

            </a></li>
            <li class="zq_8 sHoverItem" style="position: relative; overflow: hidden;"><a href="1.aspx" target="_blank">
                <h3>铲屎官专区</h3>
                <p>我与幸福之间，就差一只猫儿？</p>

            </a></li>
        </ul>
    </div>
    <!--分类专区结束-->
    <div style="clear: both; overflow: hidden; height: 0;"></div>
    <!--众里寻他千百度开始-->
    <div class="qbd" style="height: 621px; padding-top: 70px; background: #f7f9fa">
        <div class="row">
            <div>
                <h3>众里寻她千百度</h3>
            </div>
        </div>
        <p>只是因为在人群中多看了你一眼,再也没能忘掉你容颜,梦想着偶然能有一天再相见…</p>
        <div class="xinbj"></div>
        <!-- 更多 -->
        <p class="more"><a href="#" target="_blank">更多</a></p>
        <!-- 更多 -->
        <div class="zlqbd animated wow fadeIn animated" data-wow-delay="0.5s" data-wow-duration="2s" style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
            <div class="zlqbd_list">
                <div class="people">
                    <ul class="zlmore">
                        <li><a href="1.aspx" target="_blank">
                            <img class="lazy" src="images/reg/5965d068c2ca8_big.png"  alt="" style="display: block;" width="294" height="368">
                            <div class="ceng" style="display: none;">
                                <p class="brtit">回眸一睹相思梦</p>
                                <p>
                                    <em>
                                        <img src="/public/home/images/reg/phoneicon.png" alt="" width="17" height="15"></em>
                                </p>
                                <div style="clear: both"></div>
                                <p style="font-size: 14px;">LoveID&nbsp;:&nbsp;10612674</p>
                                <p style="font-size: 14px;"><i>25岁</i> <i>浙江</i> <i>保密</i> </p>
                            </div>
                        </a></li>
                        <li><a href="/user/member/id/10534831.aspx" target="_blank">
                            <img class="lazy" src="images/reg/5a320fbba80ae_original.jpg"  alt="" style="display: block;" width="294" height="368">
                            <div class="ceng" style="display: none;">
                                <p class="brtit">会员10534831</p>
                                <p>
                                    <em>
                                        <img src="/public/home/images/reg/phoneicon.png" alt="" width="17" height="15"></em>
                                </p>
                                <div style="clear: both"></div>
                                <p style="font-size: 14px;">LoveID&nbsp;:&nbsp;10534831</p>
                                <p style="font-size: 14px;"><i>24岁</i> <i>浙江</i> <i>未婚</i> </p>
                            </div>
                        </a></li>
                        <li><a href="/user/member/id/307074.aspx" target="_blank">
                            <img class="lazy" src="images/reg/307074_1466651386.png"  alt="" style="display: block;" width="294" height="368">
                            <div class="ceng" style="display: none;">
                                <p class="brtit">平凡的女子</p>
                                <p>
                                    <em>
                                        <img src="/public/home/images/reg/phoneicon.png" alt="" width="17" height="15"></em>
                                </p>
                                <div style="clear: both"></div>
                                <p style="font-size: 14px;">LoveID&nbsp;:&nbsp;307074</p>
                                <p style="font-size: 14px;"><i>34岁</i> <i>浙江</i> <i>离异带孩子</i> </p>
                            </div>
                        </a></li>
                        <li><a href="/user/member/id/298774.aspx" target="_blank">
                            <img class="lazy" src="images/reg/298774_1438246137.jpg" data-original="data/upload/photo/2015-07-30/298774_1438246137.jpg" alt="" style="display: block;" width="294" height="368">
                            <div class="ceng" style="display: none;">
                                <p class="brtit">AMY林</p>
                                <p>
                                    <em>
                                        <img src="/public/home/images/reg/phoneicon.png" alt="" width="17" height="15"></em>
                                </p>
                                <div style="clear: both"></div>
                                <p style="font-size: 14px;">LoveID&nbsp;:&nbsp;298774</p>
                                <p style="font-size: 14px;"><i>31岁</i> <i>浙江</i> <i>保密</i> </p>
                            </div>
                        </a></li>
                        <li><a href="/user/member/id/287797.aspx" target="_blank">
                            <img class="lazy" src="images/reg/1418187772407720807.jpg" data-original="data/upload/photo/2014-12-10/1418187772407720807.jpg" alt="" style="display: block;" width="294" height="368">
                            <div class="ceng" style="display: none;">
                                <p class="brtit">雅静001</p>
                                <p>
                                    <em>
                                        <img src="/public/home/images/reg/phoneicon.png" alt="" width="17" height="15"></em>
                                </p>
                                <div style="clear: both"></div>
                                <p style="font-size: 14px;">LoveID&nbsp;:&nbsp;287797</p>
                                <p style="font-size: 14px;"><i>28岁</i> <i>上海</i> <i>未婚</i> </p>
                            </div>
                        </a></li>
                        <li><a href="/user/member/id/278442.aspx" target="_blank">
                            <img class="lazy" src="images/reg/278442_1397810527.jpg" data-original="data/upload/photo/2014-04-18/278442_1397810527.jpg" alt="" style="display: block;" width="294" height="368">
                            <div class="ceng" style="display: none;">
                                <p class="brtit">夏雨夜</p>
                                <p>
                                    <em>
                                        <img src="/public/home/images/reg/phoneicon.png" alt="" width="17" height="15"></em>
                                </p>
                                <div style="clear: both"></div>
                                <p style="font-size: 14px;">LoveID&nbsp;:&nbsp;278442</p>
                                <p style="font-size: 14px;"><i>31岁</i> <i>浙江</i> <i>未婚</i> </p>
                            </div>
                        </a></li>
                        <li><a href="/user/member/id/277275.aspx" target="_blank">
                            <img class="lazy" src="images/reg/13957244831750620842.jpg" data-original="data/upload/photo/2014-03-25/13957244831750620842.jpg" alt="" style="display: block;" width="294" height="368">
                            <div class="ceng" style="display: none;">
                                <p class="brtit">晴空微蒅</p>
                                <p>
                                    <em>
                                        <img src="images/reg/phoneicon.png" alt="" width="17" height="15"></em>
                                </p>
                                <div style="clear: both"></div>
                                <p style="font-size: 14px;">LoveID&nbsp;:&nbsp;277275</p>
                                <p style="font-size: 14px;"><i>26岁</i> <i>江苏</i> <i>未婚</i> </p>
                            </div>
                        </a></li>
                        <li><a href="/user/member/id/275152.aspx" target="_blank">
                            <img class="lazy" src="images/reg/275152_1392823854.jpg" data-original="data/upload/photo/2014-02-19/275152_1392823854.jpg" alt="" style="display: block;" width="294" height="368">
                            <div class="ceng" style="display: none;">
                                <p class="brtit">kyoruo</p>
                                <p>
                                    <em>
                                        <img src="/public/home/images/reg/phoneicon.png" alt="" width="17" height="15"></em>
                                </p>
                                <div style="clear: both"></div>
                                <p style="font-size: 14px;">LoveID&nbsp;:&nbsp;275152</p>
                                <p style="font-size: 14px;"><i>29岁</i> <i>浙江</i> <i>未婚</i> </p>
                            </div>
                        </a></li>
                        <li><a href="/user/member/id/265953.aspx" target="_blank">
                            <img class="lazy" src="images/reg/1381487720198780661.jpg" data-original="data/upload/photo/2013-10-11/1381487720198780661.jpg" alt="" style="display: block;" width="294" height="368">
                            <div class="ceng" style="display: none;">
                                <p class="brtit">Steven成</p>
                                <p>
                                    <em>
                                        <img src="images/reg/phoneicon.png" alt="" width="17" height="15"></em>
                                </p>
                                <div style="clear: both"></div>
                                <p style="font-size: 14px;">LoveID&nbsp;:&nbsp;265953</p>
                                <p style="font-size: 14px;"><i>32岁</i> <i>浙江</i> <i>未婚</i> </p>
                            </div>
                        </a></li>
                        <li><a href="/user/member/id/254621.aspx" target="_blank">
                            <img class="lazy" src="images/reg/680fb9bb589f82e9b055bd8b456a2363.jpg" data-original="data/upload/photo/25/254621/680fb9bb589f82e9b055bd8b456a2363.jpg" alt="" style="display: block;" width="294" height="368">
                            <div class="ceng" style="display: none;">
                                <p class="brtit">溫暖你的心</p>
                                <p>
                                    <em>
                                        <img src="images/reg/phoneicon.png" alt="" width="17" height="15"></em>
                                </p>
                                <div style="clear: both"></div>
                                <p style="font-size: 14px;">LoveID&nbsp;:&nbsp;254621</p>
                                <p style="font-size: 14px;"><i>42岁</i> <i>上海</i> <i>离异单身</i> </p>
                            </div>
                        </a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--众里寻他千百度结束-->
    <!--奔跑吧缘分开始-->
    <div>
        <div style="clear: both; overflow: hidden; height: 0;"></div>
        <div class="run">
            <div class="row">
                <div>
                    <h3>奔跑吧，缘分</h3>
                </div>
            </div>
            <p>所谓缘分就是一种美好的相遇! 世间有两种情可以称之为浪漫,一种是相濡以沫的爱,另一种是邂逅相遇的美,而这两种情都离不开“缘分”</p>
            <div class="xinbj"></div>
            <p class="more"><a href="/home/event/index.aspx " target="_blank">更多</a></p>
            <!-- 更多 -->
            <!--活动滚动-->
            <div class="bodyCon08">
                <div class="students">
                    <div id="four_flash">
                        <div class="flashBg imglist_w">
                            <ul class="mobile imglist" style="left: -9375px;">
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a964ae39a159.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">【遇见花开，遇见你】万松书院公益相亲交友派对</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-03-24</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">8</span></p>
                                    <p><a href="/event/detail/id/899" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a9dfe824b120.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十九期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-03-10</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">0</span></p>
                                    <p><a href="/event/detail/id/900" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a9643c3075bf.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">【老钱红线工作室】红娘本部交友趴</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-3-25下午1时30分</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>杭州市下城区朝晖路219号中山花园写字楼3F情缘吧</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">6</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a9644d24930a.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">【都市精英，迎新春】浙大紫金港校区咖啡馆交友派对</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-03-04 13:30-16:00</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>浙江大学紫金港校区蒙民伟楼3楼  思想咖啡</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">99</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a96430b73e1c.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十八期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-03-03</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">1</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a96436022cf7.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第140届“中国红娘日”黄龙洞相亲大会</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-3-31</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>杭州市曙光路69号黄龙洞—圆缘民俗园</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">4</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a8f6bccae637.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十七期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-02-24</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">0</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a8f6a93363d8.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第139届“中国红娘日”黄龙洞相亲大会</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-2-24</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>杭州市曙光路69号黄龙洞—圆缘民俗园</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">0</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a781489cbca5.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十六期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-02-10</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">3</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a6ebc6f30b8f.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十五期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-02-03</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">1</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a964ae39a159.jpg" alt="">
                                </a>
                                    <h4><a href="/event/detail/id/899" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">【遇见花开，遇见你】万松书院公益相亲交友派对</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-03-24</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">8</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a9dfe824b120.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十九期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-03-10</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">0</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a9643c3075bf.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">【老钱红线工作室】红娘本部交友趴</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-3-25下午1时30分</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>杭州市下城区朝晖路219号中山花园写字楼3F情缘吧</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">6</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a9644d24930a.jpg" alt="">
                                </a>
                                    <h4><a href="/event/detail/id/897" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">【都市精英，迎新春】浙大紫金港校区咖啡馆交友派对</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-03-04 13:30-16:00</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>浙江大学紫金港校区蒙民伟楼3楼  思想咖啡</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">99</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a96430b73e1c.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十八期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-03-03</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">1</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a96436022cf7.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第140届“中国红娘日”黄龙洞相亲大会</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-3-31</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>杭州市曙光路69号黄龙洞—圆缘民俗园</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">4</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a8f6bccae637.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十七期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-02-24</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">0</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a8f6a93363d8.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第139届“中国红娘日”黄龙洞相亲大会</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-2-24</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>杭州市曙光路69号黄龙洞—圆缘民俗园</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">0</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="images/reg/5a781489cbca5.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十六期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-02-10</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">3</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a6ebc6f30b8f.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十五期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-02-03</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">1</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a964ae39a159.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">【遇见花开，遇见你】万松书院公益相亲交友派对</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-03-24</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">8</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a9dfe824b120.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十九期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-03-10</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">0</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a9643c3075bf.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">【老钱红线工作室】红娘本部交友趴</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-3-25下午1时30分</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>杭州市下城区朝晖路219号中山花园写字楼3F情缘吧</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">6</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a9644d24930a.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">【都市精英，迎新春】浙大紫金港校区咖啡馆交友派对</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-03-04 13:30-16:00</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>浙江大学紫金港校区蒙民伟楼3楼  思想咖啡</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">99</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a96430b73e1c.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十八期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-03-03</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">1</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a96436022cf7.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第140届“中国红娘日”黄龙洞相亲大会</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-3-31</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>杭州市曙光路69号黄龙洞—圆缘民俗园</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">4</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="../images/reg/5a8f6bccae637.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十七期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-02-24</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">0</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="images/reg/5a8f6a93363d8.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第139届“中国红娘日”黄龙洞相亲大会</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-2-24</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>杭州市曙光路69号黄龙洞—圆缘民俗园</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">0</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="images/reg/5a781489cbca5.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十六期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-02-10</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">3</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="images/reg/5a6ebc6f30b8f.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十五期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-02-03</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">1</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="images/reg/5a964ae39a159.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">【遇见花开，遇见你】万松书院公益相亲交友派对</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-03-24</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">8</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="images/reg/5a9dfe824b120.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十九期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-03-10</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">0</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="images/reg/5a9643c3075bf.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">【老钱红线工作室】红娘本部交友趴</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-3-25下午1时30分</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>杭州市下城区朝晖路219号中山花园写字楼3F情缘吧</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">6</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="images/reg/5a9644d24930a.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">【都市精英，迎新春】浙大紫金港校区咖啡馆交友派对</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-03-04 13:30-16:00</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>浙江大学紫金港校区蒙民伟楼3楼  思想咖啡</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">99</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="images/reg/5a96430b73e1c.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十八期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-03-03</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">1</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="images/reg/5a96436022cf7.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第140届“中国红娘日”黄龙洞相亲大会</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-3-31</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>杭州市曙光路69号黄龙洞—圆缘民俗园</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">4</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="images/reg/5a8f6bccae637.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十七期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-02-24</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">0</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="images/reg/5a8f6a93363d8.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第139届“中国红娘日”黄龙洞相亲大会</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-2-24</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>杭州市曙光路69号黄龙洞—圆缘民俗园</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">0</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="images/reg/5a781489cbca5.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十六期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-02-10</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">3</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                                <li><a href="Activit.aspx" style="width: 100%; display: block; float: none;" target="_blank">
                                    <img src="images/reg/5a6ebc6f30b8f.jpg" alt="">
                                </a>
                                    <h4><a href="Activit.aspx" style="font-size: 18px; color: #333; font-weight: normal" target="_blank">第六十五期 中国红娘网“万松书院公益相亲会”</a></h4>
                                    <p style="color: #999; font-size: 14px;">聚会时间：<span>2018-02-03</span></p>
                                    <p class="jhd" style="color: #666; font-size: 14px;">聚会地点：<span>万松岭路81号</span></p>
                                    <p style="color: #666">已报名人数：<span style="color: #88c679">1</span></p>
                                    <p><a href="Activit.aspx" style="color: #fff; text-align: center; line-height: 37px;" target="_blank">我要报名</a></p>
                                </li>
                            </ul>
                        </div>
                        <div class="but_left">
                            <img src="images/reg/indexleft_03.png">
                        </div>
                        <div class="but_right">
                            <img src="images/reg/indexright_03.png">
                        </div>
                    </div>
                </div>
            </div>
            <!--活动滚动-->
        </div>
    </div>
    <!--奔跑吧缘分结束-->
    <div style="clear: both;"></div>
    <!--红娘牵线开始-->
    <div style="background: url(images/reg/hnteachbg.jpg) no-repeat; background-size: 100% 100%;">
        <div class="hnqx wow fadeIn bg-blue animated" data-wow-duration="2s" data-wow-delay="1s" style="visibility: visible; animation-duration: 2s; animation-delay: 1s; animation-name: fadeIn;">
            <div class="hnqxjz">
                <div class="row">
                    <div class="wow pulse bg-blue animated" data-wow-iteration="5" data-wow-duration="0.25s" data-wow-delay="2s" style="visibility: visible; animation-duration: 0.25s; animation-delay: 2s; animation-iteration-count: 5; animation-name: pulse;">
                        <h3>红娘牵线</h3>
                    </div>
                </div>
                <p>专属红娘一对一，全程跟踪服务</p>
                <div class="xinbj"></div>
                <!-- 更多 -->
                <p class="more"><a href="/home/teacher/index" target="_blank">更多</a> </p>
                <!-- 更多 -->
                <div class="hnqxji wow bounceInDown  animated" data-wow-delay="1s" style="visibility: visible; animation-delay: 1s; animation-name: bounceInDown;">
                    <ul>
                        <li>
                            <img src="images/reg/hnqx1.png" alt="" width="197" height="193">
                            15年婚介领导品牌
                        </li>
                        <li>
                            <img src="images/reg/hnqx2.png" alt="" width="197" height="193">
                            专业爱情顾问团队
                        </li>
                        <li>
                            <img src="images/reg/hnqx3.png" alt="" width="197" height="193">
                            高成功率情感专家
                        </li>
                        <li>
                            <img src="images/reg/hnqx4.png" alt="" width="197" height="193">
                            高诚信度婚恋服务
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--红娘牵线结束-->
    <!--联系我们开始-->
    <div class="we">
        <div class="row">
            <div>
                <h3>联系我们</h3>
            </div>
        </div>
        <p class="binl">毗邻地铁一号线西湖文化广场站,身处杭州武林商圈核心位置</p>
        <div class="xinbj"></div>
        <div class="maptab">
            <div class="tab"><a href="javascript:;" class="on">百度地图</a> <a href="javascript:;" class="out">三维地图</a> </div>
            <div class="content">
                <ul>
                    <li class="map" style="display: block; background: rgba(0, 0, 0, 0) url(&quot;images/reg/mapbanner_03.jpg&quot;) no-repeat scroll center center / 100% 100%;"></li>
                    <li class="map" style="background: rgba(0, 0, 0, 0) url(&quot;images/reg/mapbanner2_03.jpg&quot;) no-repeat scroll center center / 100% 100%;"></li>
                </ul>
            </div>
            <div class="map_alert">
                <a href="javascript:void(0)" class="map_alertclose"></a>
                <p style="font-size: 14px; color: #666">地址:&nbsp;杭州市朝晖路219号中山花园写字楼3楼 ( 地铁1号线西湖文化广场站，附近公交站：西湖文化广场，中北桥)  </p>
                <p style="font-size: 14px; color: #666">热线:&nbsp;<span style="color: #d86ea3">0571-85337299</span></p>
            </div>
            <!--隐藏点击事件的em标签-->
            <em class="map_po"></em>
        </div>
        <!-- map -->
    </div>
    <!--联系我们结束-->
</asp:Content>
