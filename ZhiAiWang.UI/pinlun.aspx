<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pinlun.aspx.cs" Inherits="ZhiAiWang.UI.comments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        main
        {
            width: 100%;
            height: auto;
        }

            main section
            {
                width: 79%;
                height: 1000px;
                background: #fff;
                margin: auto;
                margin-top: 5px;
            }
        /*qq表情*/
        .comment
        {
            width: 80%;
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

        main section dl
        {
            width: 50%;
            height: 200px;
            margin-left: 50px;
            padding-top: 50px;
        }

            main section dl dt
            {
                width: 60px;
                height: 60px;
            }

                main section dl dt img
                {
                    width: 60px;
                    height: 60px;
                    border-radius: 60px;
                }

            main section dl dd
            {
                padding-left: 80px;
            }

                main section dl dd:nth-child(2)
                {
                    color: #dd506f;
                    font-size: 20px;
                    margin-top: -40px;
                }

                main section dl dd:nth-child(3)
                {
                    font-size: 14px;
                    color: #666;
                    padding-top: 10px;
                }

                main section dl dd:nth-child(4)
                {
                    padding-top: 20px;
                }

                main section dl dd:nth-child(5)
                {
                    color: #999;
                    font-size: 12px;
                    float: left;
                    margin: 10px 0;
                }
        .pl
        {
            margin-left:120px;
           
        }
            .pl p
            {
                padding-top:10px;
            }
    </style>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="css/reset.css">
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.qqFace.js"></script>
    <script>
        $(function () {
            $('.cont').each(function () {
                var id = $(this).attr("id");
                $($("#" + id)).html(replace_em($("#" + id).html()));
            });
            $('.conts').each(function () {
                var id = $(this).attr("id");

                $($("#" + id)).html(replace_em($("#" + id).html()));
            })
            $('.emotion').qqFace({

                id: 'facebox',

                assign: 'saytext',

                path: 'arclist/'	//表情存放的路径

            });

            $('.sub_btn').click(function () {

                $.ajax({
                    url: 'commentsHandler.ashx',
                    type: 'post',
                    data: {
                        mesg: $(this).parent().siblings().eq(0).val(),
                       
                    },
                    success: function (res) {
                        if (res == 2) {
                            alert("请先登录！")
                        }
                        else {
                            if (res == 1) {
                                var id = $(".cofid").html();
                                window.location.href = 'pinlun.aspx?id=' + id;
                            }
                            else {
                                alert("评论失败！");
                            }
                        }

                    }
                })

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
    <main>
    <section>
     <asp:Repeater ID="Repeater1" runat="server">
         <ItemTemplate>
             <dl class="dll">
                                    <dt>
                                        <asp:Image ID="Image2" runat="server" ImageUrl=' <%# "images/header/" +Eval("headImgUrl")%>' />
                                    </dt>
                                    <dd><%#Eval("petname") %></dd>
                                    <dd><%#Eval("age")+"岁" %>&nbsp;<%#Eval("[address]") %>&nbsp;<%#Eval("marriageState") %></dd>
                                    <dd id='content<%#Eval("cofID") %>' class="cont"><%#Eval("cofContent") %></dd>
                                    <dd><%#Eval("SendTime") %></dd>
                                    <span style="display:none" class="cofid"><%#Eval("cofID") %></span>
                                    
                 </dl>
         </ItemTemplate>
     </asp:Repeater>
        <article>
              <div class="comment">
                        <div class="com_form">
                            <textarea class="input" id="saytext" name="saytext" maxlength="250"></textarea>
                            <p>
                                <span style="color: #666;">最大支持250个字</span>
                                <input type="button" class="sub_btn" value="评论">
                                <img src="arclist/1.gif" title="点击发表情" class="emotion" />

                            </p>
                        </div>
                    </div>
        </article>
        <article class="pl">
               <asp:Repeater ID="Repeater2" runat="server">
                          <ItemTemplate>
                              <p>
                                  <span style="color:#dd506f;"><%#Eval("name") %>：</span>
                                  <span class="conts" id='con<%#Eval("ansID") %>'><%#Eval("ansContent") %></span>
                                  <p class="time" style="color:#666;font-size:12px;"><%#Eval("ansDatetime") %></p>
                              </p>
                              
                         
                          </ItemTemplate>
                </asp:Repeater>
        </article>
    </section>
</main>
</asp:Content>
