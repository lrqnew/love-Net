<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InnerMonologue.aspx.cs" Inherits="ZhiAiWang.UI.InnerMonologue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>内心独白</title>
    <style type="text/css">
        * {
            margin:0px;
            padding:0px;
        }
        body {
            width:100%;
    background: #f6f7f7;
}
body {
    font-size: 14px;
    font-family: "微软雅黑";
    color: #3c3c3c;
    line-height: 1.7;
}
        .center_right {
    width: 100%;
    
    border: solid 1px #e4e4e4;
    min-height:100%;
    background: #fff;
    float: right;
    padding: 25px;
    box-sizing: border-box;
}
        .progress {
    position: relative;
    margin-bottom: 30px;
}
        .progress span {
    position: absolute;
    left: 10px;
    bottom: 0;
    font-size: 14px;
    color: #646364;
}
        .progress a {
    position: absolute;
    right: 10px;
    bottom: 0;
    font-size: 14px;
    color: #416aaf;
    text-decoration: underline;
}
        .container {
    max-width: 556px;
    padding: 0px 2px;
    background: #ebebeb;
    border-radius: 5px;
    margin-left: 140px;
}
        .bar.mint {
    background-color: #bee383;
    background-image: repeating-linear-gradient(-45deg, #bee383, #bee383 10px, #9bce54 10px, #9bce54 17px);
    background-size: 600px 100%;
    animation: barberpole 12s linear infinite;
    line-height: 19px;
    font-size: 12px;
}
        .bar.active:before {
    opacity: 1;
}
.bar:before {
    content: attr(data-skill);
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    padding: 10px;
    height: 40px;
    font-style: italic;
    opacity: 0;
    transition: opacity 2s 0.6s;
}
.bar.active:after, .bar.active:before {
    opacity: 1;
}

.bar:after {
    content: attr(data-percent) "%";
    display: block;
    position: absolute;
    top: 0;
    right: 45%;
    height: 40px;
    opacity: 0;
    transition: opacity 2s 0.6s;
    color: #666;
}
.mon_box {
    padding: 30px 50px;
}
.mon_box h4 {
    font-style: normal;
    font-size: 14px;
    color: #5e5e5e;
    font-weight: normal;
}
.mon_box .db_box {
    position: relative;
}
.mon_box textarea {
    width: 700px;
    height: 210px;
    margin-top: 20px;
    resize: none;
    padding: 5px;
    border-color: #d5d5d5;
    color: #666;
}
.mon_box .db_box .demo_more {
    position: absolute;
    padding: 4px 20px;
    border: solid 1px #e6e6e6;
    top: -14px;
    right: 29px;
    cursor: pointer;
    z-index: 1;
}
.mon_box .db_box .demo_more em {
    float: left;
    font-size: 12px;
    color: #5e5e5e;
}
em {
    font-style: normal;
}
.mon_box .db_box .demo_more span {
    display: block;
    overflow: hidden;
    border: 6px solid #d4d4d4;
    border-color: #d4d4d4 #fff;
    border-width: 5px 5px 0 5px;
    position: absolute;
    left: 82%;
    top: 41%;
    margin-left: -6px;
}
.mon_box .db_box .demo_text {
    position: absolute;
    top: 14px;
    right: 29px;
    width: 300px;
    background: #f9fbff;
    padding: 10px;
    border: solid 1px #e6e6e6;
    font-size: 12px;
    line-height: 25px;
    display: none;
}
.mon_box p {
    font-size: 12px;
}
.mon_box p span {
    color: #ef0404;
}
.mon_box .wxtit {
    margin-top: 20px;
}
.mon_box .wxtit h3 {
    line-height: 30px;
    font-weight: normal;
    font-size: 14px;
}
.mon_box .wxtit p {
    text-indent: 28px;
}
.mon_box p {
    font-size: 12px;
}
.btn_box input {
    padding: 11px 34px;
    background: #ff5b9c;
    border: none;
    color: #fff;
    font-size: 14px;
    border-radius: 5px;
    cursor: pointer;
}
.btn_box a {
    padding: 9px 30px;
    border: solid 1px #ccc;
    border-radius: 3px;
    margin-left: 10px;
}
a {
    text-decoration: none;
    color: #888;
}
        #big {
            margin:0 auto;
        }
    </style>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
function size(par) {
            var max = 1500;
            var str = 0;
            if (par.value.length <= max) {
                str = parseInt(max) - parseInt(par.value.length);
            }
            document.getElementById("span").innerHTML = str;
        }
        showLen(document.getElementById("num"));
        function showLen(obj) {

            document.getElementById('span1').innerHTML = (obj.value.length);


        }
    </script> <!-- 计算字数 -->
    <script>
    $(".demo_more").click(function () {
            $(this).toggleClass('on1')
            $(".demo_text").slideToggle(400)
        })

        $(window).load(function () {
            $("#center_nav1").next().removeClass('down').addClass('up');
            $("#center_nav1").parent().parent().next().css('display', 'block');
            $("#center_nav1").parent().parent().next().children().eq(2).children().addClass('nav_hover1');
        })

        $(".intro_tj").click(function () {
            var intro = $("#num").val();
            if (intro.length > 1500) {
                alert('字数超过限制');
                return false;
            }
            $(this).val('保存中...');
            $.ajax({
                url: "/member/save_intro",
                data: { 'intro': intro },
                type: 'post',
                success: function (data) {
                    if (data.info == '请登录后继续') {
                        window.location = data.jump;
                        return false;
                    }
                    if (data.code == 1) {
                        window.location = "/member/details";
                    } else {
                        $(this).val('保存并继续');
                        alert(data.msg)
                    }
                },
                error: function () {

                }
            })
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="big">
            <div class="center_right">
                <!-- 进度条public -->
                <div class="progress"><span></span> 
                    <div class="container">
                    </div>
                </div>
                <!-- 进度条public -->
                  
                        <div class="mon_box">
                            <h4>介绍下自己，描述下理想的伴侣，说说你对婚姻的期望</h4>
                            <h4>让潜在伴侣能深入了解您，也方便红娘为您提供个性化的人工服务</h4>
                            <div class="db_box">
                                <asp:TextBox ID="TextBox1" CssClass="tex" runat="server" Visible="False"></asp:TextBox>
                                <textarea runat="server" onkeyup="size(this); showLen(this);" maxlength="1500" name="intro" placeholder="请输入内容" id="num"></textarea>
                                <div class="demo_more"><em>范例</em> <span></span></div>
                                <div class="demo_text">
                                    以前为了学习老妈不让谈恋爱，现在为了工作没时间恋爱，随着时间的推移，自己发现已经步入“剩女”的行列，其实自己对另一半的要求也不是很高，可以不是很
帅，可以不是很富有，但是一定要有上进心，责任心，能够孝顺老人家也就差不多了。我对未来有很多憧憬和希望，但愿能和心爱的人一起实现.....
                                </div>
                            </div>
                            <p>限30-1500字，目前已输入<span id="span1">0</span>字，您还可以输入<span id="span">1500</span>字</p>
                            <div class="wxtit">
                                <h3>温馨提示：</h3>
                                <p>1. 为了遵守国家法规，保障用户个人信息安全，内心独白中请勿出现QQ、MSN、微信、微博、电话号码等联系方式以及网址、广告、色情、诋毁或其他不健康内容。</p>
                                <p>2.若文字中出现不符合标准的内容，我们将予以删除，请认真填写。</p>
                            </div>
                        </div>
                        <div class="btn_box" style="margin-left: 50px">
                            <asp:Button ID="Button1" runat="server" Text="保存并继续" OnClick="Button1_Click" />
                            <a href="GerenDetail.aspx">跳过</a> </div>
                  
                </div>
            </div>
    
    </form>
</body>
</html>
