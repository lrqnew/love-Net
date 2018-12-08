<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="friends.aspx.cs" Inherits="ZhiAiWang.UI.friends" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <style>
            .share
            {
                width: 1190px;
                margin: 0 auto;
            }

            .crumb
            {
                height: 55px;
                padding-left: 13px;
                line-height: 55px;
            }

                .crumb a
                {
                    color: #666;
                    font-size: 14px;
                }

            .sharebanner
            {
                width: 100%;
                margin-bottom: 20px;
            }

                .sharebanner img
                {
                    width: 100%;
                }

            img
            {
                display: block;
            }

            img
            {
                border: none;
            }

            .sharel
            {
                float: left;
                width: 882px;
            }

            .sharepublish
            {
                background: #fff;
                border: #e2ddd5 1px solid;
                width: 840px;
                padding: 10px 21px;
            }

                .sharepublish .title
                {
                    margin-bottom: 18px;
                }

                    .sharepublish .title i.publish
                    {
                        width: 20px;
                        height: 20px;
                        background: url(../images/friend/index-ico.png) no-repeat;
                        background-position-x: 0%;
                        background-position-y: 0%;
                        display: inline-block;
                        margin-right: 10px;
                        float: left;
                        background-position: 0 -102px;
                    }

                    .sharepublish .title span
                    {
                        font-size: 18px;
                        color: #333;
                        height: 20px;
                        line-height: 20px;
                        display: inline-block;
                    }

            .input_before
            {
                position: relative;
            }

            .input_tips
            {
                height: 52px;
                display: block;
                overflow-y: auto;
                padding: 5px;
                cursor: text;
                background: #fff;
                border: #ddd solid 1px;
                font-size: 14px;
                font-family: "微软雅黑";
                color: #888;
                width: 828px;
            }

            .input_before span
            {
                font-family: "Georgia";
                position: absolute;
                bottom: 5px;
                right: 25px;
                font-size: 14px;
                color: #999;
            }

            .sharelook
            {
                float: left;
                margin-top: 15px;
                position: relative;
            }

            ul, li
            {
                list-style-type: none;
            }

            .sharelook ul li
            {
                cursor: pointer;
                float: left;
                margin-right: 10px;
            }

                .sharelook ul li i.look1
                {
                    background-position: -31px -28px;
                }

                .sharelook ul li i
                {
                    background: url(../images/friend/icon.png) no-repeat;
                    background-position-x: 0%;
                    background-position-y: 0%;
                    width: 16px;
                    height: 16px;
                    display: inline-block;
                }

                .sharelook ul li span
                {
                    overflow: hidden;
                    display: inline-block;
                    font-size: 14px;
                    line-height: 16px;
                    color: #999;
                    outline: none;
                    vertical-align: top;
                }

            .sharelook ul li
            {
                cursor: pointer;
                float: left;
                margin-right: 10px;
            }

                .sharelook ul li i.look2
                {
                    background-position: -31px -61px;
                }

                .sharelook ul li i.look3
                {
                    background-position: -31px -244px;
                }

            #photo
            {
                left: 28px;
                width: 440px;
            }

            .sharepic
            {
                width: 390px;
                background: #fff;
                top: 26px;
                left: -30px;
                border: #ddd 1px solid;
                color: #535353;
                position: absolute;
                -webkit-box-shadow: 0 2px 5px 1px rgba(0,0,0,.1);
                -moz-box-shadow: 0 2px 5px 1px rgba(0,0,0,.1);
                -khtml-box-shadow: 0 2px 5px 1px rgba(0,0,0,.1);
                -ms-box-shadow: 0 2px 5px 1px rgba(0,0,0,.1);
                box-shadow: 0 2px 5px 1px rgba(0,0,0,.1);
            }

            .hide
            {
                display: none;
            }

            .sharepic .title1
            {
                background: url(../images/friend/layer_arrow.png) no-repeat 0 0;
                background-position-x: 0px;
                background-position-y: 0px;
                width: 16px;
                height: 11px;
                position: absolute;
                left: 30px;
                top: -10px;
                background-position: 0 -1px;
            }

            .sharepic .title2
            {
                height: 30px;
                line-height: 30px;
                margin: 10px 10px 0px 10px;
                font-size: 14px;
            }

                .sharepic .title2 a
                {
                    color: #535353;
                }

                .sharepic .title2 span
                {
                    float: right;
                    background: url(../images/friend/del.png) no-repeat 0 0;
                    width: 18px;
                    height: 18px;
                    display: inline-block;
                    margin-top: 5px;
                }

            .sharepic .photo ul li
            {
                float: left;
                margin-right: 5px;
                width: 80px;
                height: 80px;
                position: relative;
            }

            .sharepic ul li
            {
                margin-right: 0;
                margin: 3px;
                margin-right: 3px;
            }

            .sharelook ul li
            {
                cursor: pointer;
                float: left;
                margin-right: 10px;
            }

            .sharepic .photo ul li img
            {
                width: 80px;
                height: 80px;
                position: absolute;
                top: 0;
                left: 0;
                z-index: 1;
            }

            img
            {
                display: block;
            }

            img
            {
                border: none;
            }

            .sharepic .photo ul li .file1
            {
                position: absolute;
                width: 80px;
                height: 80px;
                top: 0;
                left: 0;
                opacity: 0;
                z-index: 2;
                cursor: pointer;
            }

            #video
            {
                left: 88px;
                width: 450px;
            }

            .sharepic
            {
                width: 390px;
                background: #fff;
                top: 26px;
                left: -30px;
                border: #ddd 1px solid;
                color: #535353;
                position: absolute;
                -webkit-box-shadow: 0 2px 5px 1px rgba(0,0,0,.1);
                -moz-box-shadow: 0 2px 5px 1px rgba(0,0,0,.1);
                -khtml-box-shadow: 0 2px 5px 1px rgba(0,0,0,.1);
                -ms-box-shadow: 0 2px 5px 1px rgba(0,0,0,.1);
                box-shadow: 0 2px 5px 1px rgba(0,0,0,.1);
            }

            .hide
            {
                display: none;
            }

            .sharepic .title1
            {
                background: url(../images/friend/layer_arrow.png) no-repeat 0 0;
                background-position-x: 0px;
                background-position-y: 0px;
                width: 16px;
                height: 11px;
                position: absolute;
                left: 30px;
                top: -10px;
                background-position: 0 -1px;
            }

            .clear
            {
                clear: both;
                overflow: hidden;
                height: 0;
            }

            .sharexxsm
            {
                width: 100%;
                margin-top: 20px;
                margin-bottom: 26px;
            }

                .sharexxsm img
                {
                    width: 100%;
                }

            img
            {
                display: block;
            }

            img
            {
                border: none;
            }

            .screen
            {
                width: 1190px;
                margin: 20px auto;
                display: none;
            }

                .screen ul li.active
                {
                    background: #fff;
                }

                .screen ul li
                {
                    background: #f2f2f2;
                    width: 95px;
                    text-align: center;
                    line-height: 34px;
                    float: left;
                    border: solid 1px #DFDFDF;
                }

                    .screen ul li a
                    {
                        display: block;
                    }

            a
            {
                text-decoration: none;
            }

            .sharecomment
            {
                background: #fff;
                padding: 0 33px;
                width: 818px;
            }

            .sharecommentt
            {
                border-bottom: #e7e7e7 1px solid;
                padding: 33px 0;
                position: relative;
            }

            .sharecommenttl
            {
                width: 60px;
                float: left;
                margin-right: 18px;
            }

                .sharecommenttl a img
                {
                    width: 60px;
                    height: 60px;
                    border-radius: 50%;
                }

            img
            {
                display: block;
            }

            img
            {
                border: none;
            }

            .sharecommenttr
            {
                float: left;
                width: 740px;
            }

            .sharecommenttrt a
            {
                color: #dd506f;
                font-size: 20px;
            }

            .sharecommenttrt img
            {
                margin: 0 2px;
                display: inline;
            }

            .sharecommenttrt p
            {
                margin: 0;
                font-size: 14px;
                color: #666;
                line-height: 30px;
            }

                .sharecommenttrt p span
                {
                    margin-right: 10px;
                }

            .sharecommenttrt span
            {
                font-size: 14px;
                color: #666;
            }

            .sharecommenttr .sharecommenttrb p
            {
                font-size: 14px;
                color: #333;
                line-height: 25px;
                margin: 10px 0;
            }

            .sharecommenttr .sharecommenttrb .time
            {
                color: #999;
                font-size: 12px;
                float: left;
                margin: 10px 0;
            }

            .sharecommenttr .sharecommenttrb .pldz
            {
                color: #999;
                font-size: 12px;
                float: right;
                margin: 10px 0;
            }

                .sharecommenttr .sharecommenttrb .pldz a
                {
                    color: #999;
                    margin: 0 5px;
                }

                .sharecommenttr .sharecommenttrb .pldz a
                {
                    color: #999;
                    margin: 0 5px;
                }

                    .sharecommenttr .sharecommenttrb .pldz a img
                    {
                        display: inline;
                        vertical-align: bottom;
                    }

            .sharer
            {
                float: right;
                width: 282px;
                background: #fff;
            }

            .sharert
            {
                margin-bottom: 60px;
            }

                .sharert .men
                {
                    width: 130px;
                    height: 130px;
                    border-radius: 50%;
                    overflow: hidden;
                    border: #ccc 1px solid;
                    margin: 18px auto;
                    margin-bottom: 18px;
                    margin-bottom: 10px;
                }

            img
            {
                display: block;
            }

            .sharert .namew
            {
                text-align: center;
                width: 240px;
                margin: 0 auto;
                margin-bottom: 0px;
                font-size: 18px;
                color: #333;
                margin-bottom: 20px;
            }

                .sharert .namew a
                {
                    text-align: center;
                    font-size: 18px;
                    height: 18px;
                    color: #333;
                }

            a
            {
                text-decoration: none;
            }

            .sharert .namew img
            {
                margin: 0 2px;
                display: inline;
            }

            .sharert .namew p
            {
                font-size: 14px;
                color: #666;
                margin: 5px 0;
            }

            .sharert ul
            {
                width: 240px;
                margin: 0 auto;
                border: #d2d8e0 1px solid;
                border-bottom: 0;
                border-left: 0;
            }

            ul, li
            {
                list-style-type: none;
            }

            .sharert ul li
            {
                width: 119px;
                height: 50px;
                line-height: 50px;
                float: left;
                border-left: #d2d8e0 1px solid;
                border-bottom: #d2d8e0 1px solid;
            }

                .sharert ul li a.highlight
                {
                    color: #337ab7;
                }

                .sharert ul li a
                {
                    height: 50px;
                    line-height: 50px;
                    text-align: center;
                    font-size: 14px;
                    color: #337ab7;
                    display: block;
                }

            .sharerb
            {
                width: 240px;
                margin: 0 auto;
            }

            .sharerbt
            {
                border-top: 1px solid #efefef;
                margin-bottom: 20px;
            }

                .sharerbt h3
                {
                    border: 0;
                    padding: 0 10px 0 0;
                    font-family: "微软雅黑";
                    margin-top: -10px;
                    background: #fff;
                    float: left;
                    font-weight: normal;
                    font-size: 16px;
                    color: #111;
                }

                .sharerbt a
                {
                    width: 24px;
                    height: 24px;
                    background: #fff url(../images/friend/index-ico.png) no-repeat;
                    background-position-x: 0%;
                    background-position-y: 0%;
                    float: right;
                    display: inline-block;
                    background-position: -60px -256px;
                    margin-top: -12px;
                }

            .sharerb ul li
            {
                margin-bottom: 27px;
            }

                .sharerb ul li a.man
                {
                    width: 52px;
                    height: 65px;
                    display: block;
                    float: left;
                    margin-right: 13px;
                }

                .sharerb ul li .sharerbr
                {
                    float: left;
                    width: 118px;
                }

                    .sharerb ul li .sharerbr h3
                    {
                        font-weight: normal;
                        font-size: 14px;
                        color: #333;
                        margin-bottom: 5px;
                    }

                    .sharerb ul li .sharerbr p
                    {
                        color: #666;
                        font-size: 12px;
                        margin: 0;
                    }

                    .sharerb ul li .sharerbr span
                    {
                        display: block;
                        margin-bottom: 5px;
                        font-size: 12px;
                        color: #666;
                    }

                .sharerb ul li a.follow
                {
                    font-size: 12px;
                    width: 50px;
                    height: 24px;
                    margin-top: 18px;
                    display: block;
                    float: left;
                    line-height: 24px;
                    text-align: center;
                    color: #dd6288;
                    background: #fff;
                    border: #dd6288 1px solid;
                }

                .sharerb ul li a.man img
                {
                    width: 52px;
                    height: 65px;
                }

            img
            {
                display: block;
            }

            img
            {
                border: none;
            }

            .submit1
            {
                float: right;
                background: #dd6288;
                margin-top: 8px;
                color: #fff;
                width: 90px;
                height: 36px;
                display: inline-block;
                line-height: 36px;
                text-align: center;
                border: none;
                font-size: 18px;
                border-radius: 2px;
                -webkit-border-radius: 2px;
                -moz-border-radius: 2px;
                -khtml-border-radius: 2px;
                cursor: pointer;
                font-family: "微软雅黑";
            }

            .crumb
            {
                height: 55px;
                padding-left: 13px;
                line-height: 55px;
            }

            .sharert dl
            {
                width: 280px;
                height: 250px;
            }

                .sharert dl dt
                {
                    padding: 10px;
                }

                    .sharert dl dt img
                    {
                        width: 140px;
                        height: 140px;
                        margin: auto;
                        border-radius: 120px;
                    }

                .sharert dl dd
                {
                    color: #666;
                    font-size: 16px;
                    text-align: center;
                }

            .petName
            {
                padding-top: 10px;
            }
            /*qq表情*/
            .comment
            {
                width: 680px;
                margin: 20px auto;
                position: relative;
                background: #fff;
                padding: 20px 50px 50px;
                border: 1px solid #DDD;
                border-radius: 5px;
            }

                .comment h3
                {
                    height: 28px;
                    line-height: 28px;
                }

            .com_form
            {
                width: 100%;
                position: relative;
            }

            .input
            {
                width: 99%;
                height: 60px;
                border: 1px solid #ccc;
            }

            .com_form p
            {
                height: 28px;
                line-height: 28px;
                position: relative;
                margin-top: 10px;
            }

            span.emotion
            {
                width: 42px;
                height: 20px;
                padding-left: 20px;
                cursor: pointer;
            }

                span.emotion:hover
                {
                    background-position: 2px -28px;
                }

            .qqFace
            {
                margin-top: 4px;
                background: #fff;
                padding: 2px;
                border: 1px #dfe6f6 solid;
            }

                .qqFace table td
                {
                    padding: 0px;
                }

                    .qqFace table td img
                    {
                        cursor: pointer;
                        border: 1px #fff solid;
                    }

                        .qqFace table td img:hover
                        {
                            border: 1px #0066cc solid;
                        }

            #show
            {
                width: 770px;
                margin: 20px auto;
                background: #fff;
                padding: 5px;
                border: 1px solid #DDD;
                vertical-align: top;
            }

            .sub_btn
            {
                position: absolute;
                right: 0px;
                top: 0;
                display: inline-block;
                zoom: 1; /* zoom and *display = ie7 hack for display:inline-block */
                *display: inline;
                vertical-align: baseline;
                margin: 0 2px;
                outline: none;
                cursor: pointer;
                text-align: center;
                font: 14px/100% Arial, Helvetica, sans-serif;
                padding: .5em 2em .55em;
                text-shadow: 0 1px 1px rgba(0,0,0,.6);
                -webkit-border-radius: 3px;
                -moz-border-radius: 3px;
                border-radius: 3px;
                -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
                -moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
                box-shadow: 0 1px 2px rgba(0,0,0,.2);
                color: #e8f0de;
                border: solid 1px #dd6288;
                background: #64991e;
                background: -webkit-gradient(linear, left top, left bottom, from(#dd6288), to(#dd6288));
                background: -moz-linear-gradient(top, #dd6288,#dd6288);
                filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#dd6288', endColorstr='#dd6288');
            }

                .sub_btn:hover
                {
                    background: #538018;
                    background: -webkit-gradient(linear, left top, left bottom, from(#dd6288), to(#dd6288));
                    background: -moz-linear-gradient(top,#dd506f, #dd506f);
                    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#dd6288', endColorstr='#dd6288');
                }

            .sharecommentt dl
            {
                width: 100%;
                height: 200px;
            }

                .sharecommentt dl dt
                {
                    width: 60px;
                    height: 60px;
                }

                    .sharecommentt dl dt img
                    {
                        width: 60px;
                        height: 60px;
                        border-radius: 60px;
                    }

                .sharecommentt dl dd
                {
                    padding-left: 80px;
                }

                    .sharecommentt dl dd:nth-child(2)
                    {
                        color: #dd506f;
                        font-size: 20px;
                        margin-top: -40px;
                    }

                    .sharecommentt dl dd:nth-child(3)
                    {
                        font-size: 14px;
                        color: #666;
                        padding-top: 10px;
                    }

                    .sharecommentt dl dd:nth-child(4)
                    {
                        padding-top: 20px;
                    }

                    .sharecommentt dl dd:nth-child(5)
                    {
                        color: #999;
                        font-size: 12px;
                        float: left;
                        margin: 10px 0;
                    }

            .comments
            {
                margin-top: 50px;
                position: relative;
                padding: 0 35px;
                border-bottom: #e7e7e7 1px solid;
               display:none;
                height: 200px;
             
               
            }

                .comments:hover
                {
                }

            .wcomment
            {
                color: #999;
                margin: 0 5px;
                text-decoration: none;
                text-align: right;
            }
        </style>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="css/reset.css">
        <script src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery.qqFace.js"></script>
        <script type="text/javascript">

            $(function () {

                $('.cont').each(function () {
                    var id = $(this).attr("id");
                    $($("#" + id)).html(replace_em($("#" + id).html()));
                });
                
                $('.emotion').qqFace({

                    id: 'facebox',

                    assign: 'saytext',
                  
                    path: 'arclist/'	//表情存放的路径

                });
                $('.emotion1').each(function () {
                    var id = $(this).attr("id");
                })
                $('.emotion1').qqFace({

                    id: 'facebox',
                    assign: 'saytext1',
                    path: 'arclist/'	//表情存放的路径

                });

                $(".sub_btn").click(function () {

                    var str = $("#saytext").val();
                    //var str1 = $("#saytext1").val();
                    // $("#show").html(replace_em(str));
                    
                    $.ajax({
                        url: 'FriendHandler.ashx',
                        type: 'post',
                        data: {
                            mesg: str
                        },
                        success: function (res) {       
                            if (res == 1) {
                                window.location.href = 'friends.aspx';
                            }
                            else if(res==2)
                            {
                              alert("请先登录！")
                            }
                            else {
                                alert("消息发布失败！");
                            }
                        }

                    })
                })
             
               
                $('.wcomment').click(function () {
                    $(this).parent().parent().children().eq(6).slideToggle();
                    // alert($(this).parent().parent().children().eq(6).children().children().children().eq(0).val())
                  
                 
                })
           
            })
        

                //查看结果


                function replace_em(str) {
                    str = str.replace(/\</g, '&lt;');
                    str = str.replace(/\>/g, '&gt;');
                    str = str.replace(/\n/g, '<br/>');
                    str = str.replace(/\[em_([0-9]*)\]/g, '<img src="arclist/$1.gif" border="0" style="display:inline"/>');
                    return str;

                }

        </script>

      
        <!--分享开始-->
        <div class="share" style="height: initial; padding-bottom: 20px; background-size: 100% 100%;">
            <!-- 分享面包屑开始 -->
            <div class="crumb">
                <asp:SiteMapPath ID="SiteMapPath1" runat="server">
                </asp:SiteMapPath>
            </div>
            <!-- 分享面包屑结束 -->
            <!-- 分享banner开始 -->
            <div class="sharebanner">
                <a href="/huodong">
                    <img src="images/friend/sharebanner.png"></a>
            </div>
            <!-- 分享banner结束 -->
            <!-- 分享底部左侧开始 -->
            <div class="sharel">
                <!-- 分享左侧发帖区开始 -->
                <div class="sharepublish">
                    <!-- 分享左侧发帖区头部开始 -->
                    <div class="title"><i class="publish"></i><span>发布交友圈</span> </div>
                    <!-- 分享左侧发帖区头部结束 -->
                    <!-- 分享左侧发帖区头部输入开始 -->
                    <div id=""></div>
                    <div class="comment">
                        <div class="com_form">
                            <textarea class="input" id="saytext" name="saytext" maxlength="250"></textarea>
                            <p>
                                <span style="color: #666;">最大支持250个字</span>
                                <input type="button" class="sub_btn" value="发布">
                                <img src="arclist/1.gif" title="点击发表情" class="emotion" />

                            </p>
                        </div>
                    </div>
                    
                    <!-- 分享左侧发帖区头部功能结束 -->

                    <!-- 分享左侧发帖区头部发布结束 -->
                    <div class="clear"></div>
                </div>
                <!-- 分享左侧发帖区结束 -->
                <!-- 分享左侧说明图片开始 -->
                <div class="sharexxsm">
                    <a href="/huodong" target="_blank">
                        <img src="images/friend/sharebanner.jpg"></a>
                </div>
                <!-- 分享左侧说明图片结束 -->
                <!-- 分享左侧评论筛选开始 -->

                <div class="clear"></div>

                <!-- 分享左侧评论区开始 -->
                <div class="sharecomment">
                    <div class="sharecommentt ">
                        <asp:Repeater ID="UserMesg" runat="server" OnItemCommand="UserMesg_ItemCommand" OnItemDataBound="UserMesg_ItemDataBound">
                            <ItemTemplate>
                                <dl class="dll">
                                    <dt>
                                        <asp:Image ID="Image2" runat="server" ImageUrl=' <%# "images/header/" +Eval("headImgUrl")%>' />
                                    </dt>
                                    <dd><%#Eval("petname") %></dd>
                                    <dd><%#Eval("age")+"岁" %>&nbsp;<%#Eval("[address]") %></dd>
                                    <dd id="content<%#Eval("cofID") %>" class="cont"><%#Eval("cofContent") %></dd>
                                    <dd><%#Eval("SendTime") %></dd>
                                    <dd style="float: right; margin-top: 5px;"><a href='pinlun.aspx?id=<%#Eval("cofID") %>'class="wcomment">评论</a></dd>
                                    <%--  <div class="comments">
                                        <div class="comment">
                                            <div class="com_form">
                                                <textarea class="input" id="saytext1" name="saytext1" maxlength="250"></textarea>
                                                <p>
                                                    <span style="color: #666;">最大支持250个字</span>
                                                    <input type="button" class="sub_btn" value="评论">
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                      <asp:Repeater ID="Repeater2" runat="server">
                                        <ItemTemplate>
                                                <span style="color:#dd506f;"><%#Eval("name") %>：</span>
                                               <span><%#Eval("ansContent") %></span>
                                        </ItemTemplate>
                                    </asp:Repeater>   --%>  
                                    <span style="display:none;"><%#Eval("cofID") %></span>
                                   
                                </dl>
                            </ItemTemplate>
                        </asp:Repeater>

                      <%--  <asp:Repeater ID="Repeater1" runat="server">

                          <ItemTemplate>
                              <span style="color:#dd506f;"><%#Eval("name") %>：</span>
                              <span><%#Eval("ansContent") %></span>
                          </ItemTemplate>
                        </asp:Repeater>--%>
                    </div>
                
                </div>
                <!-- 分享左侧评论区结束 -->
                <!-- 加载更多开始 -->
                <div class="fy" style="display: none;">
                    <div style="border: 1px solid;"><span class="current">1</span><a style="padding: 2px 6px; width: 50px; height: 10px; border: 1px solid" class="num" href="/share/index/p/2">2</a><a style="padding: 2px 6px; width: 50px; height: 10px; border: 1px solid" class="num" href="/share/index/p/3">3</a><a style="padding: 2px 6px; width: 50px; height: 10px; border: 1px solid" class="num" href="/share/index/p/4">4</a><a style="padding: 2px 6px; width: 50px; height: 10px; border: 1px solid" class="num" href="/share/index/p/5">5</a><a style="padding: 2px 6px; width: 50px; height: 10px; border: 1px solid" class="num" href="/share/index/p/6">6</a><a style="padding: 2px 6px; width: 50px; height: 10px; border: 1px solid" class="num" href="/share/index/p/7">7</a><a style="padding: 2px 6px; width: 50px; height: 10px; border: 1px solid" class="num" href="/share/index/p/8">8</a><a style="padding: 2px 6px; width: 50px; height: 10px; border: 1px solid" class="num" href="/share/index/p/9">9</a><a style="padding: 2px 6px; width: 50px; height: 10px; border: 1px solid" class="num" href="/share/index/p/10">10</a><a style="padding: 2px 6px; width: 50px; height: 10px; border: 1px solid" class="num" href="/share/index/p/11">11</a> <a style="padding: 2px; width: 50px; height: 10px; border: 1px solid" class="next" href="/share/index/p/2">下一页</a> <a style="padding: 2px; width: 50px; height: 10px; border: 1px solid" class="end" href="/share/index/p/5523">最后一页</a></div>
                </div>
                <span class="wLoad" style="display: none;" allpage="" page="1"><em>加载中</em><img src="images/friend/loading-32.gif"></span>
                <!-- 加载更多结束 -->
            </div>
            <!-- 分享底部左侧结束 -->
            <!-- 分享底部右侧开始 -->
            <div class="sharer">
                <!-- 分享底部右侧头部开始 -->
                <div class="sharert">
                    <!-- 已登录展示个人信息开始 -->
                    <%--<!-- 个人头像开始 -->
             
                
                <!-- 个人通知结束 -->--%>
                    <asp:DataList ID="DataList1" runat="server" Height="192px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="276px">
                        <ItemTemplate>
                            <dl>
                                <dt>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "images/header/"+Eval("headImgUrl") %>' /></dt>
                                <dd>
                                    <div class="petName">
                                        昵称：
                           <asp:Label ID="petname" runat="server" Text='<%# Eval("petname") %>'>
                           </asp:Label>

                                    </div>
                                </dd>
                                <dd style="color: #dd6288; padding: 10px;">

                                    <asp:Label ID="Label1" runat="server" Text="Label">
                              消息:0
                                    </asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text="Label">
                              通知:0
                                    </asp:Label>
                                    <asp:Label ID="Label3" runat="server" Text="Label">
                              活动:0
                                    </asp:Label>
                                </dd>
                            </dl>
                        </ItemTemplate>
                    </asp:DataList>

                    <!-- 已登录展示个人信息结束 -->
                </div>
                <!-- 分享底部右侧头部结束 -->
                <!-- 分享底部右侧底部开始 -->
                <div class="sharerb">
                    <!-- 可能感兴趣的人开始 -->
                    <div class="sharerbt">
                        <h3>可能感兴趣的人</h3>
                        <a href="javascript:;" onclick="InterestAgain();"></a>
                        <div class="clear"></div>
                    </div>
                    <!-- 可能感兴趣的人结束 -->
                    <!-- 推荐关注的人列表开始 -->
                    <ul id="interest" page="2" pages="2">
                        <li><a href="/user/member/id/10498193" class="man" target="_blank">
                            <img src="images/friend/592156738fe4d_big.png"></a>
                            <div class="sharerbr">
                                <h3>橙子</h3>
                                <p>28岁  河南平顶山</p>
                                <span>财会/审计</span>
                            </div>
                            <a href="javascript:;" class="follow" onclick="addFollow(this,10498193);" alt="关注">+关注</a>
                            <div class="clear"></div>
                        </li>
                        <li><a href="/user/member/id/308943" class="man" target="_blank">
                            <img src="images/friend/308943_1471872849.jpg"></a>
                            <div class="sharerbr">
                                <h3>徐菲</h3>
                                <p>31岁  河南平顶山</p>
                                <span>其他行业</span>
                            </div>
                            <a href="javascript:;" class="follow" onclick="addFollow(this,308943);" alt="关注">+关注</a>
                            <div class="clear"></div>
                        </li>
                        <li><a href="/user/member/id/298509" class="man" target="_blank">
                            <img src="images/friend/298509_1437379349.jpg"></a>
                            <div class="sharerbr">
                                <h3>夏婷1</h3>
                                <p>28岁  河南平顶山</p>
                                <span>其他行业</span>
                            </div>
                            <a href="javascript:;" class="follow" onclick="addFollow(this,298509);" alt="关注">+关注</a>
                            <div class="clear"></div>
                        </li>
                        <li><a href="/user/member/id/191289" class="man" target="_blank">
                            <img src="images/friend/3cfb534e22f03caca19fbe2376d1bc6e.jpg"></a>
                            <div class="sharerbr">
                                <h3>子情诺呗</h3>
                                <p>30岁  河南平顶山</p>
                                <span>其他行业</span>
                            </div>
                            <a href="javascript:;" class="follow" onclick="addFollow(this,191289);" alt="关注">+关注</a>
                            <div class="clear"></div>
                        </li>
                        <li><a href="/user/member/id/143837" class="man" target="_blank">
                            <img src="images/friend/856c5cd392b2e241d314dd71fc318664.jpg"></a>
                            <div class="sharerbr">
                                <h3>属于我</h3>
                                <p>32岁  河南平顶山</p>
                                <span>其他行业</span>
                            </div>
                            <a href="javascript:;" class="follow" onclick="addFollow(this,143837);" alt="关注">+关注</a>
                            <div class="clear"></div>
                        </li>
                        <li><a href="/user/member/id/126546" class="man" target="_blank">
                            <img src="images/friend/3567d752e939e3e290c3845c6b34c115.jpg"></a>
                            <div class="sharerbr">
                                <h3>看花开花落</h3>
                                <p>38岁  河南平顶山</p>
                                <span>其他行业</span>
                            </div>
                            <a href="javascript:;" class="follow" onclick="addFollow(this,126546);" alt="关注">+关注</a>
                            <div class="clear"></div>
                        </li>
                        <li><a href="/user/member/id/121695" class="man" target="_blank">
                            <img src="images/friend/a7f52e5a2476a3843cad36ff570de150.jpg"></a>
                            <div class="sharerbr">
                                <h3>雾中起舞</h3>
                                <p>51岁  河南平顶山</p>
                                <span>其他行业</span>
                            </div>
                            <a href="javascript:;" class="follow" onclick="addFollow(this,121695);" alt="关注">+关注</a>
                            <div class="clear"></div>
                        </li>
                        <li><a href="/user/member/id/99983" class="man" target="_blank">
                            <img src="images/friend/00ccd2509099f53e1338cd732b9cbbb7.jpg"></a>
                            <div class="sharerbr">
                                <h3>婉婷</h3>
                                <p>32岁  河南平顶山</p>
                                <span>其他行业</span>
                            </div>
                            <a href="javascript:;" class="follow" onclick="addFollow(this,99983);" alt="关注">+关注</a>
                            <div class="clear"></div>
                        </li>
                        <li><a href="/user/member/id/205584" class="man" target="_blank">
                            <img src="images/friend/67329aa93799f7c57f9a31f96525de7d.jpg"></a>
                            <div class="sharerbr">
                                <h3>不懂别追求</h3>
                                <p>27岁  河南平顶山</p>
                                <span>其他行业</span>
                            </div>
                            <a href="javascript:;" class="follow" onclick="addFollow(this,205584);" alt="关注">+关注</a>
                            <div class="clear"></div>
                        </li>
                        <li><a href="/user/member/id/266913" class="man" target="_blank">
                            <img src="images/friend/1382592334224391602.jpg"></a>
                            <div class="sharerbr">
                                <h3>未来03</h3>
                                <p>59岁  河南平顶山</p>
                                <span>其他行业</span>
                            </div>
                            <a href="javascript:;" class="follow" onclick="addFollow(this,266913);" alt="关注">+关注</a>
                            <div class="clear"></div>
                        </li>
                    </ul>
                    <!-- 推荐关注的人列表结束 -->
                </div>
                <!-- 分享底部右侧底部结束 -->
            </div>
            <!-- 分享底部右侧结束 -->
            <div class="clear"></div>
        </div>
        <!--分享结束-->
    </form>
</asp:Content>
