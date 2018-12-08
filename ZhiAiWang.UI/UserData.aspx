<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserData.aspx.cs" Inherits="ZhiAiWang.UI.UserData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <link href="js/data/animate.css" rel="stylesheet" />
    <script src="js/data/birthday.js"></script>
    <script src="js/data/dui.js"></script>
    <link href="js/data/forms.css" rel="stylesheet" />
    <link href="js/data/member.css" rel="stylesheet" />
    <script src="js/data/laytpl.js"></script>
    <script src="js/data/layer.js"></script>
    <link href="js/data/layer.css" rel="stylesheet" />
    <script src="js/data/jquery_004.js"></script>
    <script src="js/data/jquery_003.js"></script>
    <script src="js/data/jquery_002.js"></script>
    <script src="js/data/jquery.js"></script>
    <script src="js/data/jquery-ui.js"></script>
    <link href="js/data/jquery-ui.css" rel="stylesheet" />
    <script src="js/data/hm.js"></script>
    <script src="js/data/main.js"></script>
    <link href="js/data/page.css" rel="stylesheet" />
    <link href="js/data/public.css" rel="stylesheet" />
    <script src="js/data/school.js"></script>
    <script src="js/data/scripts.js"></script>
    <link href="js/data/style.css" rel="stylesheet" />
    <link href="js/data/style1.css" rel="stylesheet" />
    <link href="js/data/style2.css" rel="stylesheet" />
    <link href="js/data/sweetalert.css" rel="stylesheet" />
    <script src="js/data/sweetalert.js"></script>
    <script src="js/data/syscode.js"></script>
    <script src="js/xcConfirm.js"></script>
    <link href="css/xcConfirm.css" rel="stylesheet" />
    <script src="js/jquery-3.2.1.min.js"></script>
    <link href="bootstrap-4.0.0-dist/css/bootstrap.css" rel="stylesheet" />
    <script src="bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>
    
    <style>
        * {
        padding:0px;
            margin-left: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }
        .boxcons {
            width:100%;
            height:450px;
        }
        #myModal {
        margin:50px auto; 
        }
         #box{
      position:relative;
      width:100%;
      height:0;
      border-top:120px solid #D86EA3;
      border-bottom:330px solid #fff;
      padding:5px;
      font-family:'Microsoft YaHei';
    }
    .boximg{
      position:absolute;
      top:-50%;
      margin-top:-65px;
      left:10%;
      margin-left:-12.5px;
      width:90px;
      height:90px;
   
      border-radius:25px;
    }
        #box .data {
            
            margin-left:35%;
            margin-top:-8%;
           
        }
        .tis {
            margin-top:8%;
            border-bottom:1px solid #eaedee;
        }
        #box table tr td {
         padding:5px 15px;
        }
         #box table tr td:hover {
         cursor:pointer;
        }
           .data span {
        color:#fff;
        }
    </style>
    <script>
        $(function () {
            $("#box table tr .tds").eq(0).css("background", "#f9e8f0");
            $("#box table tr .tds").click(function () {
                $("#box table tr .tds").css("background", "none");
                $(this).css("background", "#f9e8f0");
            });
        });
    </script>
    <script>
        $(function () {
            $(".btns").click(function () {
              
                $.ajax({
                    url: 'DEmo.ashx',
                    success: function (mes) {

                        var arr = eval(mes);
                        $.each(arr, function (index, obj) {
                            $("#box table tr .tdd").eq(index).text(arr[index].helConID);
                            $("#box table tr .tds").eq(index).text(arr[index].helConContent);

                        })
                    }
                });

                return false;
            });
            $("#fs").click(function () {

                $('#box table tr .tds').each(function (i, e) {

                    if ($('#box table tr .tds').eq(i).css('background-color') == 'rgb(249, 232, 240)') {
                        var td = $('#box table tr .tds').eq(i);
                        //alert(td.siblings().eq(0).html());
                        $.ajax({
                            url: 'infoHandler.ashx',
                            data: {
                                huid: $("#ContentPlaceHolder1_lab_userId").text(),
                                huhid: $("#ContentPlaceHolder1_uid").text(),
                                heid: td.siblings().eq(0).html()
                            },
                            success: function (reult) {
                                if (reult=="1") {
                                    alert("消息已发送哦！");
                                }
                            }

                        });
                    }


                });

            });
        });
    </script>
    <script>
        $(function () {
            $(".gain_wx").click(function () {
                var a = $(".member").val();
                if (a == "False") {
                    var txt = "亲！需要开通会员才能查看哦！";
                    window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.confirm);
                }
                else {
                    $(".pics").css("display", "block");
                }
                
            })
        })
    </script>
  <form runat="server">
    <div class="mem_main" data-mid="10909344">
        <!--sub1开始-->
        <div class="sub1">
            <!--左侧开始-->
            <div class="left" style="position: relative">
                <div class="zenj">
                  <%if (Session["member"]==null)
                      {%> 
                    <input class="member" value='False' style="display: none" />
                  <%}
                        else
                        {%>
                     <input class="member" value='<%=Session["member"].ToString() %>' style="display: none" />
                           <%}%>

                    <input class="zenj1" id="m_photo" type="button">
                    <div class="diz" style=""><a href="Album.aspx?userId=<%=Request["userId"] %>" data-mid="10909344" title="查看相册" style="padding:1px" class="hide"><img style="width:35px;height:35px;" src="images/相册.png" /></a></div>
                    <input class="qphoto" onclick="get_photo(10909344)" type="button">
                </div>
            
                <div id="tFocus">
                    <div class="prev" id="prev"></div>
                    <div class="next" id="next"></div>
                    <ul id="tFocus-pic">
                        <li style="opacity: 100; z-index: 5;"><a href="#">
                            <asp:Image ID="Image1" runat="server" />
                           
                           </a></li>
                    </ul>
                </div>
                <script type="text/javascript">addLoadEvent(Focus());</script>
                <!--缩略图结束-->
            </div>
           
            <!--左侧结束-->
            <!--右侧开始-->
            <div class="right">
                <!--info1开始-->
                <div class="info1">
                    <div class="name nickname">
                        <asp:Label ID="petname" CssClass="petname" runat="server" Text="Label"></asp:Label>.                                           
                        <img src="images/UserData/mem_rz2.png" alt="手机未验证" title="手机未验证">
                        <img src="images/UserData/mem_rz1.png" alt="身份证未验证" title="身份证未验证">
                    </div>
                    <div class="loveid">Loveid:<asp:Label ID="lab_userId" runat="server" Text="Label"></asp:Label></div>
                </div>
                <!--info1结束-->
                <!--info2开始-->
                <div class="info2" style="position: relative;">
                    <div style="width: 608px; float: left">
                        <ul>
                            <li><span>年龄：</span><asp:Label ID="lab_age" runat="server" Text="Label"></asp:Label></li>
                            <li><span>婚况：</span><asp:Label ID="lab_marriageState" runat="server" Text="Label"></asp:Label></li>
                        </ul>
                        <ul style="margin-left: 100px;">
                            <asp:Label ID="Winxin" runat="server" Text="Label" Visible="False"></asp:Label>
                            <li><span>身高：</span><asp:Label ID="lab_height" runat="server" Text="Label"></asp:Label></li>
                            <li><span>学历：</span><asp:Label ID="lab_education" runat="server" Text="Label"></asp:Label></li>
                        </ul>
                        <ul style="margin-left: 100px;">
                            <li><span>年收入：</span><asp:Label ID="lab_salary" runat="server" Text="Label"></asp:Label></li>
                            <li><span>工作地：</span><asp:Label ID="lab_address" runat="server" Text="Label"></asp:Label></li>
                        </ul>
                        <!--获取微信号码-->
                        <div style="clear: both"></div>
                        <ul style="width: 200px; margin-top: 15px;">
                            <li>
                                <%--<input id="Button1" class="gain_wx" style="padding: 10px 38px;  color: #fff; background: #44b94f; border-radius: 5px" type="button" value="获取微信号" />--%>
                                 </li>
                           
                        </ul>
                 
                    </div>
                    <!-- 重新插入虚线 -->
                    <div style="width: 76%; height: 1px; border-bottom: 1px dashed #cccaca; position: absolute; top: 56px;"></div>
                    <div style="width: 76%; height: 1px; border-bottom: 1px dashed #cccaca; position: absolute; top: 97px;"></div>
                    <!-- 重新插入虚线 -->
                    <div class="pics" style="float: right;display:none; text-align: center;">
                        <asp:Image ID="Img_QRImg" runat="server" Height="180px" Width="180px"/>
                        <p style="color: #666; font-size: 12px;">扫一扫  手机关注TA</p>
                    </div>
                </div>
                <!--info2开始-->
                <!--发消息，打招呼，委托开始-->
                <div class="info3">
                    <div class="btn" style="color: #5575be; margin-left: 86px; position: relative"><a id="msg1" class="layer_msg gain_wx" href="javascript:void(0)" style="display: block; color: #fff; background: #149e9f">获取微信</a> </div>
                    <div class="btn" style="color: #d32b27; margin-left: 30px; position: relative;"><a href="javascript:void(0)" style="display: block; color: #fff; background: #bd46ba" data-toggle="modal" data-target="#myModal" id="zhaohu">打招呼</a> </div>
                    <div class="btn" style="color: #5a2a90; margin-left: 30px; position: relative"><a class="ajax_vip" href="Hongniang.aspx" style="display: block; color: #fff; background: #6556c4">委托红娘</a> </div>
                    <div class="tjcheng">
                        <img src="images/UserData/shenqingchenggong.png" alt="" height="456" width="740">
                        <a href="#" class="gb_close"></a></div>
                </div>
                <!--发消息，打招呼，委托结束-->
                
                <!-- ta end-->
                <div class="info5">
                    <div style="clear: both"></div>
                    <div class="tit">
                        内心独白
                    </div>
                    <div class="text"> <asp:Label ID="lab_monologue" runat="server" Text="Label"></asp:Label> </div>
                </div>
            </div>
            <!--右侧结束-->
        </div>
        <!--sub1结束-->
        <div class="clear" style="height: 30px;"></div>
        <!--清除浮动-->
        <!--sub2开始-->
        <div class="sub2">
            <div class="info1">
                <div class="left" style="margin-top: 60px;">
                    <img src="images/UserData/mem_sub2_0.png" alt="">
                    <p style="color: #dd506f; width:100px">详细资料</p></div>
                <div class="right">
                    <ul style="margin-left: 155px;">
                        <li><span>性别：</span><asp:Label ID="lab_gender" runat="server" Text="Label"></asp:Label></li>
                        <li><span>体型：</span>                    保密                    </li>
                        <li><span>血型：</span>                    <asp:Label ID="Lab_blood" runat="server" Text="Label"></asp:Label>                   </li>
                        <li><span>职业：</span>                    <asp:Label ID="lab_major" runat="server" Text="Label"></asp:Label>                    </li>
                        <li id="school"><span>毕业学校：</span><asp:Label ID="Lab_school" runat="server" Text="Label"></asp:Label></li>
                    </ul>
                    <ul>
                        <li><span>籍贯：</span>                   <asp:Label ID="Lab_jg" runat="server" Text="Label"></asp:Label>                    </li>
                        <li><span>生肖：</span>                   <asp:Label ID="Lab_zodiac" runat="server" Text="Label"></asp:Label>                    </li>
                        <li><span>民族：</span>                   <asp:Label ID="Lab_nation" runat="server" Text="Label"></asp:Label>                   </li>
                        <li><span>住房条件：</span><i class="login_detail"><asp:Label ID="lab_family" runat="server" Text="Label"></asp:Label></i></li>
                    </ul>
                    <ul>
                        <li><span>体重：</span><asp:Label ID="Lab_weights" runat="server" Text="Label"></asp:Label></li>
                        <li><span>星座：</span>                   <asp:Label ID="Lab_star" runat="server" Text="Label"></asp:Label>                   </li>
                        <li><span>信仰：</span>                    不信教                    </li>
                        <li><span>有无孩子：</span>                    没有                    </li>
                    </ul>
                </div>
            </div>
       
        </div>

           <div class="modal fade" id="myModal" >
  <div class="modal-dialog" style="z-index:556;">
    <div class="modal-content">
      <div class= "boxcons">
           <div id="box">
               <p class="data">
                   <asp:Label ID="info1" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="info2" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="info3"  runat="server" Text="Label"></asp:Label>
                 <asp:Label ID="uid" CssClass="uid" runat="server" Text="Label" Style="display:none"></asp:Label>
               </p>
               <p class="tis"><span style="font-size:14px;font-weight:bold; margin-left:5%;">精选问候语</span>&nbsp;&nbsp;
                   <span style="font-size:12px;color:#D86DA2;">(请点击选择一条问候语)</span>
                   <span style="float:right;margin-right:10px;">
                       <asp:LinkButton ID="btns" CssClass="btns" runat="server">换一批</asp:LinkButton>
                    
                   </span>
               </p>
             <img class="boximg" runat="server" id="img1" src="images/w/100715_1.jpg" />
               <asp:Repeater ID="Repeater1" runat="server">
                   <HeaderTemplate>
                       <table>

                
                   </HeaderTemplate>
                   <ItemTemplate>
                       <tr>
                           <td class="tdd" style="display:none" ><%#Eval("helConID") %></td>
                           <td class="tds"><%#  Eval("helConContent") %></td>
                       </tr>
                   </ItemTemplate>
                   <FooterTemplate>
                              </table>
                   </FooterTemplate>
               </asp:Repeater>
                   <input type="button" style="width: 168px; height: 38px; background: #d86ea3; margin: 0 auto; border-radius: 20px; margin-top: 15px; border: none; margin-left: 30%;"
                                id="fs" value="发送" />
  </div>

      </div>
     
    </div>
  </div>
</div>
    </form>
        <div class="clear" style="height: 30px;"></div>
        <div class="sub3">
            <div class="left">
                <p style="font-size: 30px; padding-top: 6px;">会员服务</p>
                <p style="font-size: 14px; margin-top: -20px;"><a style="color: #fff;" href="http://www.hongniang.com/vip/power">开通会员服务享受会员权利</a></p>
            </div>
            <div class="right">
                <form action="/payment/payment" method="post" id="submit_form">
                    <p>
                        <label>
                            <input value="1" name="id" style="margin-right: 5px;" type="radio">一个月&nbsp;&nbsp;98.00元</label></p>
                    <p>
                        <label>
                            <input value="2" name="id" style="margin-right: 5px;" type="radio">三个月&nbsp;&nbsp;198.00元</label></p>
                    <p>
                        <label>
                            <input value="3" name="id" style="margin-right: 5px;" type="radio">半年&nbsp;&nbsp;298.00元</label></p>
                    <p>
                        <label>
                            <input value="4" name="id" checked="checked" style="margin-right: 5px;" type="radio">一年&nbsp;&nbsp;398.00元</label></p>
                    <input id="pay" class="kt" value="立刻开通" type="submit">
                </form>
            </div>
        </div>

        <div class="clear" style="height: 30px;"></div>
      
   
</asp:Content>
