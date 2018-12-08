<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GerenDetail.aspx.cs" Inherits="ZhiAiWang.UI.GerenDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>详细资料</title>
    <link href="css/percenter.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="center_right">
            <div class="form_box">
                <div class="form_message">
                    <form id="detail_info">
                        <ul><asp:TextBox ID="TextBox1" CssClass="tex" runat="server" Visible="False"></asp:TextBox>
                            <li><span>真实姓名：</span><input runat="server" id="name" name="realname" class="realname" type="text" value=""/>
                            </li>
                            <li class="two" style="position: relative"><span>籍贯：</span>

                                <input id="jiguan" runat="server" class="p_name" value="" readonly="readonly" style="width:228px;" name="hometownprovince" type="text"/>
                                <em></em>

                                <input name="hometownarea" value="" class="h_area" type="hidden"/>
                                <input name="hometowncity" value="" class="h_city" type="hidden"/>
                                <em></em>
                                <!--三级点击出现选择-->
                                <div class="three_select">
                                
                                </div>
                                <div class="three_select2">
                                    <h6>请选择市/区</h6>
                                    <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 242px;">
                                        <div class="three_city" style="max-height: 242px; overflow: hidden; width: auto; height: 242px;"></div>
                                        <div class="slimScrollBar" style="background: rgb(218, 190, 174) none repeat scroll 0% 0%; width: 7px; position: absolute; top: 0px; opacity: 0.7; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
                                        <div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div>
                                    </div>
                                </div>
                            </li>
                            <li><span>体重：</span>
                                <asp:DropDownList ID="DropDownList5" runat="server" BackColor="White">
                                    <asp:ListItem>请选择</asp:ListItem>
                                <asp:ListItem>35</asp:ListItem>
                                <asp:ListItem>40</asp:ListItem>
                                <asp:ListItem>45</asp:ListItem>
                                <asp:ListItem>50</asp:ListItem>
                                <asp:ListItem>55</asp:ListItem>
                                <asp:ListItem>60</asp:ListItem>
                                <asp:ListItem>65</asp:ListItem>
                                <asp:ListItem>70</asp:ListItem>
                                <asp:ListItem>75</asp:ListItem>
                                <asp:ListItem>80</asp:ListItem>
                                <asp:ListItem>85</asp:ListItem>
                                <asp:ListItem>>90</asp:ListItem>
                                <asp:ListItem>>95</asp:ListItem>
                                <asp:ListItem>>100</asp:ListItem>
                                  </asp:DropDownList>
                               
                                <em>公斤(kg)</em> </li>
                            <li><span>体型：</span><select class="body" name="body"><option value="">请选择</option>

                                <option value="1" selected="selected">一般</option>
                                <option value="2">瘦长</option>
                                <option value="6">苗条</option>
                                <option value="7">高大美丽</option>
                                <option value="8">丰满</option>
                                <option value="9">富线条美</option>
                                <option value="0">保密</option>
                            </select></li>
                            <li><span>生肖：</span>
                                <asp:DropDownList ID="DropDownList4" runat="server" BackColor="White">
                                    <asp:ListItem>请选择</asp:ListItem>
                                <asp:ListItem>鼠</asp:ListItem>
                                <asp:ListItem>牛</asp:ListItem>
                                <asp:ListItem>虎</asp:ListItem>
                                <asp:ListItem>兔</asp:ListItem>
                                <asp:ListItem>龙</asp:ListItem>
                                <asp:ListItem>蛇</asp:ListItem>
                                <asp:ListItem>马</asp:ListItem>
                                <asp:ListItem>羊</asp:ListItem>
                                <asp:ListItem>猴</asp:ListItem>
                                <asp:ListItem>鸡</asp:ListItem>
                                <asp:ListItem>狗</asp:ListItem>
                                <asp:ListItem>猪</asp:ListItem>
                                  </asp:DropDownList>
                                </li>
                            <li><span>星座：
                                </span>
                                <asp:DropDownList ID="DropDownList3" runat="server" BackColor="White">
                                    <asp:ListItem>请选择</asp:ListItem>
                                <asp:ListItem>白羊座(03.21-04.20)</asp:ListItem>
                                <asp:ListItem>金牛座(04.21-05.20)</asp:ListItem>
                                <asp:ListItem>双子座(05.21-06.21)</asp:ListItem>
                                <asp:ListItem>巨蟹座(06.22-07.22)</asp:ListItem>
                                <asp:ListItem>狮子座(07.23-08.22)</asp:ListItem>
                                <asp:ListItem>处女座(08.23-09.22)</asp:ListItem>
                                <asp:ListItem>天秤座(09.23-10.22)</asp:ListItem>
                                <asp:ListItem>天蝎座(10.23-11.21)</asp:ListItem>
                                <asp:ListItem>射手座(11.22-12.21)</asp:ListItem>
                                <asp:ListItem>魔羯座(12.22-01.19)</asp:ListItem>
                                <asp:ListItem>水瓶座(01.20-02.19)</asp:ListItem>
                                <asp:ListItem>双鱼座(02.20-03.20)</asp:ListItem>
                                  </asp:DropDownList>
                                </li>
                           
                            <li><span>血型：</span>
                                 <asp:DropDownList ID="DropDownList1" runat="server" BackColor="White">
                                     <asp:ListItem>请选择</asp:ListItem>
                                <asp:ListItem>A型</asp:ListItem>
                                <asp:ListItem>B型</asp:ListItem>
                                <asp:ListItem>AB型</asp:ListItem>
                                <asp:ListItem>O型</asp:ListItem>
                                <asp:ListItem>不确定</asp:ListItem>
                                  </asp:DropDownList>
                            </li>
                            <li><span>民族：</span>
                                <asp:DropDownList ID="DropDownList2" runat="server" BackColor="White">
                                    <asp:ListItem>请选择</asp:ListItem>
                                <asp:ListItem>汉族</asp:ListItem>
                                <asp:ListItem>藏族</asp:ListItem>
                                <asp:ListItem>朝鲜</asp:ListItem>
                                <asp:ListItem>蒙古</asp:ListItem>
                                <asp:ListItem>回族</asp:ListItem>
                                <asp:ListItem>满族</asp:ListItem>
                                <asp:ListItem>维吾</asp:ListItem>
                                <asp:ListItem>壮族</asp:ListItem>
                                <asp:ListItem>彝族</asp:ListItem>
                                <asp:ListItem>苗族</asp:ListItem>
                                <asp:ListItem>侗族</asp:ListItem>
                                <asp:ListItem>瑶族</asp:ListItem>
                                <asp:ListItem>白族</asp:ListItem>
                                <asp:ListItem>布依</asp:ListItem>
                                <asp:ListItem>傣族</asp:ListItem>
                                <asp:ListItem>京族</asp:ListItem>
                                <asp:ListItem>黎族</asp:ListItem>
                                <asp:ListItem>羌族</asp:ListItem>
                                <asp:ListItem>怒族</asp:ListItem>
                                <asp:ListItem>佤族</asp:ListItem>
                                  </asp:DropDownList>
                                
                                </li>
                            <li><span>微信号：</span><asp:TextBox ID="Weixin" runat="server"></asp:TextBox></li>
                            
                            <li class="two"><span>毕业学校：</span>
                                
                                <em></em>
                                <input runat="server" id="school" name="major" placeholder="请填写毕业院校" style="width: 150px; margin-left: -10px;" type="text"/>
                            </li>
                        </ul>
                        <div class="btn_box">
                            <asp:Button ID="Button1" runat="server" Text="保存并继续" OnClick="Button1_Click" />
                            <a href="RegInfo.aspx" target="_self">跳过</a> </div>
                    </form>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
