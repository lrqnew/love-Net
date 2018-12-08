<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetPhoto.aspx.cs" Inherits="ZhiAiWang.UI.SetPhoto" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>上传图片</title>
    <link href="css/IMGUP.css" rel="stylesheet" />
    <script src="js/jquery-3.2.1.min.js"></script>
    <style>
        #Add {
        }

            #Add td {
                padding: 5px;
                text-align: center;
            }

        table dl {
            width: 220px;
            height: 280px;
            margin-left: 30px;
            margin-top: 20px;
        }

            table dl dt img {
                width: 210px;
                height: 220px;
            }

        .anpager .cpb {
            background: #fb91ee none repeat scroll 0 0;
            border: 1px solid #CCCCCC;
            color: #FFFFFF;
            font-weight: bold;
            margin: 5px 4px 0 0;
            padding: 4px 5px 0;
        }

        .anpager a {
            background: #FFFFFF none repeat scroll 0 0;
            border: 1px solid #CCCCCC;
            color: #b0acac;
            margin: 5px 4px 0 0;
            padding: 4px 5px 0;
            text-decoration: none;
        }

            .anpager a:hover {
                background: #fb91ee none repeat scroll 0 0; /*1F3A87*/
                border: 1px solid #fb91ee; /*1F3A87*/
                color: #FFFFFF;
            }

        .button {
            background-color: #d86ea3;
            color: aliceblue;
        }
    </style>
    <script>
        $(function () {
            $(".button").click(function () {
                $.ajax({
                    url: "SetPhotoDeleteHande.ashx",
                    type: "post",
                    data: {
                        id: $(this).parent().parent().siblings().eq(1).html().trim(),
                    },
                    success: function (res) {
                        if (res == 0) {
                            alert("删除成功！");
                            window.location.reload();
                        }
                        else {
                            alert("删除失败！");
                        }
                    }
                })
            });
        })
    </script>
</head>
<body>
    <form runat="server">
        <div id="Add">
            <table style="margin: auto">
                <tr>
                    <td>
                        <p>选择几张自己喜欢的图片吧</p>
                    </td>
                    <td style="text-align: left">
                        <img src="images/header/woman.jpg" id="div_imgfile" style="height: 40px; width: 40px" />
                    </td>
                </tr>
                <tr>

                    <td colspan="2">
                        <div id="div_imglook">
                            <div style="clear: both;"></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="button" id="btn_ImgUpStart" style="background-color: #d86ea3; color: aliceblue;" value="上传到相册" />
                    </td>
                    <td></td>
                </tr>
            </table>
        </div>

        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
            <ItemTemplate>
                <dl>
                    <dt>
                        <img src="images/gerenzhongxin/<%#Eval("pictureUrl") %>" />
                        </dt>
                    <dd><span style="color: red; padding-left: -35px;">
                        <%# star(Convert.ToInt32(Eval("picstar")))%><input type="button" class="button" value="删除" />
                    </dd>
                    <dd style="display: none">
                        <%#Eval("pictureID") %>
                    </dd>
                    <dd>
                        <a href="#" class="one"></a>
                    </dd>
                </dl>
            </ItemTemplate>


        </asp:DataList>

        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="8"
            HorizontalAlign="Center" Width="75%" Height="40px"
            meta:resourceKey="AspNetPager1" Style="font-size: 14px; margin: 0px auto; padding-top: 10px; margin-top: 20px;"
            AlwaysShow="false" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页"
            PrevPageText="上一页" SubmitButtonText="&nbsp;&nbsp;Go&nbsp;&nbsp;" SubmitButtonClass="submitBtn"
            CustomInfoStyle="font-size:14px;text-align:left;"
            InputBoxStyle="width:25px; border:1px solid #999999; text-align:center; "
            TextBeforeInputBox="转到第" TextAfterInputBox="页" PageIndexBoxType="TextBox"
            ShowPageIndexBox="Always" TextAfterPageIndexBox="&nbsp;&nbsp;页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
            TextBeforePageIndexBox="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;转到&nbsp;&nbsp;" Font-Size="14px" CustomInfoHTML="共&lt;font color='#ff0000'&gt;%PageCount%&lt;/font&gt;页，第<font color='#ff0000'>%CurrentPageIndex%</font>页"
            ShowCustomInfoSection="Left" CustomInfoSectionWidth="19%"
            OnPageChanged="AspNetPager1_PageChanged" CssClass="anpager" CurrentPageButtonClass="cpb" PagingButtonSpacing="0">
        </webdiyer:AspNetPager>
    </form>
</body>
<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/IMGUP.js"></script>
</html>
