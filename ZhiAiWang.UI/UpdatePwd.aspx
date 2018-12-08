<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePwd.aspx.cs" Inherits="ZhiAiWang.UI.UpdatePwd" %>

<%@ Register Assembly="VaidationCode" Namespace="VaidationCode" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>修改密码</title>
    <link href="css/percenter.css" rel="stylesheet" />
    <script src="js/jquery-3.2.1.min.js"></script>
    <style>
        #data_code {
            width: 50px;
            height: 40px;
            background-color: #00ffff;
            margin-left: 260px;
        }

        .yzm {
            margin-left: 15px;
        }

        .Btn {
            margin-left: -270px;
            margin-top: 80px;
            background-color: #ff00c8;
        }
    </style>
    <script>

</script>
</head>
<body style="margin-left: 170px;">
    <form id="form1" runat="server">
        <div class="w_modify">
            <p class="w_modifyt">风险提示：您的账号密码过于简单（9位及以上数字/字母/字符相结合的密码才足够安全哦！）<!--<a href="javascript:void(0)">不再提醒</a>--></p>
            <!-- 修改密码步骤开始 -->
            <div class="w_modifyc">
                <img src="images/安全认证.png" style="margin-left: 80px;" />
            </div>
            <!-- 修改密码步骤结束 -->
            <!-- 修改密码表单开始 -->
            <div class="w_modifyb">
                <ul>
                    <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                    <li><span style="width: auto">您的认证手机：</span>
                        <p id="w_tel">
                            <asp:TextBox ID="TextBox1" ReadOnly="true" runat="server"></asp:TextBox>
                        </p>
                        &nbsp;<a href="/member/tel">已换手机号？</a>
                        <div class="clear"></div>
                    </li>
                    <li style="margin-left: 42px"><span>确认码：</span>
                        <input value="" runat="server" placeholder="请输入手机收到的确认码" class="w_confirmation" style="width: 170px;" id="w_confirmation" type="text" />&nbsp;<asp:Button ID="Button1" runat="server" Text="获取验证码" CssClass="yzm" OnClick="Button1_Click" />
                        <div class="clear"></div>
                    </li>
                    <li><span>请输入新密码：</span><asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox></li>
                    <li style="margin-top: 88px; margin-left: 27px;"><span>确认密码：</span><asp:TextBox ID="txtRePwd" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" ControlToCompare="txtPwd" ControlToValidate="txtRePwd" runat="server" ErrorMessage="两次密码输入不一致" ForeColor="Red">

                        </asp:CompareValidator>
                    </li>
                    <li style="width: 400px;"></li>
                </ul>
            </div>
            <!-- 修改密码表单结束 -->

            <asp:Button ID="Button2" runat="server" Text="确定修改" OnClick="Button2_Click" CssClass="Btn" BorderColor="#FF5B9C" Font-Bold="True" ForeColor="White" Height="45px" Width="125px" />
    </form>

</body>
</html>
