<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Activit.aspx.cs" Inherits="ZhiAiWang.UI.Activit" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        #Content {
            width: 87%;
            background-color: #ffffff;
            margin: 0 auto;
        }

            #Content dl {
                width: 400px;
                margin-left: 20px;
                padding-top: 20px;
            }
            #Content dl:hover {
               box-shadow:0 0 15px #b53bbe;
            }
                #Content dl dt {
                }

                    #Content dl dt img {
                        width: 400px;
                        height: 350px;
                    }

                #Content dl .bt {
                    font-size: 25px;
                    font-weight: bold;
                }

        .formde2 {
            width: 355px;
            height: 538px;
            z-index: 999;
            padding: 40px;
            text-align: center;
            position: fixed;
            top: 50%;
            left: 50%;
            margin-left: -177px;
            margin-top: -259px;
            display: none;
        }

        .hnzstib input {
            width: 156px;
            line-height: 46px;
            font-size: 16px;
            color: #fff;
            border: none;
            line-height: 46px;
            cursor: pointer;
        }

        .formde2 ul {
            text-decoration: none;
            list-style: none;
            height: 330px;
            overflow-y: scroll;
        }

        .formde2 li {
            font-size: 16px;
            color: #666;
            text-align: left;
            line-height: 28px;
            height: 30px;
            padding: 10px 0;
            width: 330px;
            color: #999;
        }

            .formde2 li span {
                width: 90px;
                display: block;
                float: left;
                font-size: 16px;
                text-align: right;
                padding-right: 10px;
                color: #666;
            }

        table {
            width: 70%;
            margin: auto;
        }

            table dd {
                margin-left: 10px;
            }

            table dl {
                border: 1px solid #b0acac;
                margin-top: 5px;
            }

                table dl dt {
                    width: 100%;
                    margin-top: -20px;
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
                background: #fb91ee none repeat scroll 0 0;/*1F3A87*/
                border: 1px solid #fb91ee;/*1F3A87*/
                color: #FFFFFF;
            } 
    </style>
    <script src="js/xcConfirm.js"></script>

    <script src="js/jquery-3.2.1.min.js"></script>
    <link href="css/xcConfirm.css" rel="stylesheet" />
    <script>
        $(function () {
            $("input[name=qx]").click(function () {
                $(".formde2").css("display", "none");
            });
            $("input[name=qd]").click(function () {
             
                if ($("input[name=name1]").val() == "") {
                    var txt = "请输入用户名!";
                    window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.confirm);
                    return false;
                }
                if ($("input[name=phone1]").val() == "") {
                    var txt = "请填写手机号！";
                    window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.confirm);
                    return false;
                }
                if (!(/^1[3|4|5|7|8]\d{9}$/.test($("input[name=phone1]").val()))) {
                    var txt = "请在手机号码框中输入正确的手机号码!";
                    window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.confirm);
                    return false;
                }
                if ($("input[name=file]").val() == "") {
                    var txt = "请先上传照片!";
                    window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.confirm);
                    return false;
                }
                    var txt = "活动报名成功!";
                    window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.success);

            });
            $(".tanchu").click(function () {
                var ids = $(this).siblings().find("a span[class=kk]").text();
                var tie = $(this).siblings().first().text();
                var time = $(this).siblings().eq(2).text();
                var Adress = $(this).siblings().eq(3).text();
                var money = $(this).siblings().last().text().toString();
                var id = $(this).siblings().eq(6).text().toString();
                $(".formde2").css("display", "block");
                $(".formde2 ul li a").text(tie);
                $(".formde2 ul li a").eq(1).text(Adress);
                $(".formde2 ul li a").eq(2).text(time);
                $(".formde2 ul li a").eq(3).text(money);
                $(".formde2 ul li a").eq(4).text(id);
                $("input[name=idss]").val(ids);
            });
            $("#pics").click(function () {
                $("#upload").click(); //隐藏了input:file样式后，点击头像就可以本地上传
                $("#upload").on("change", function () {
                    var objUrl = getObjectURL(this.files[0]); //获取图片的路径，该路径不是图片在本地的路径
                    if (objUrl) {
                        $("#pics").attr("src", objUrl); //将图片路径存入src中，显示出图片
                    }
                });

            });
        });
        //将图片显示到img文件夹中
        function getObjectURL(file) {
            var url = null;
            if (window.createObjectURL != undefined) { // basic
                url = window.createObjectURL(file);
            } else if (window.URL != undefined) { // mozilla(firefox)
                url = window.URL.createObjectURL(file);
            } else if (window.webkitURL != undefined) { // webkit or chrome
                url = window.webkitURL.createObjectURL(file);
            }
            return url;

        }
    </script>

    <div>
        <img src="images/active/缘分.jpg" style="width: 100%; margin: auto;" />
    </div>
    <div id="Content">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
            <ItemTemplate>
                <dl>
                    <dt>
                        <a href="DetailActic.aspx?id=<%#Eval("activitiesID") %>">
                            <span class="kk" style="display: none;"><%#Eval("activitiesID") %></span>
                            <span style="display: none;"><%#Eval("activitiesTit") %></span>
                            <img alt="" src="/images/newActit/<%#Eval("activitiesPic") %>" />
                            <%--<asp:Image CssClass="shake" ID="Image1" ImageUrl='/images/newActit/<%#Eval("activitiesPic") %>' runat="server" />--%>
                        </a>
                    </dt>
                    <dd class="bt"><%# Eval("activitiesTit") %></dd>
                    <dd class="time">
                        <img src="images/active/ac_bm_icon1.jpg" />&nbsp;&nbsp;&nbsp;<%# Eval("activitiesTime") %></dd>
                    <dd>
                        <img src="images/active/ac_bm_icon2.jpg" />&nbsp;&nbsp;&nbsp;<%# Eval("activitiesAddress") %></dd>
                    <dd class="tanchu"><a href="#">
                        <img src="images/active/活动.jpg" /></a></dd>
                    <dd>已报名人数：<%# Eval("inCount") %></dd>
                    <dd style="margin-top: -48px; padding-bottom: 5px; margin-left: 340px;">
                        <img src="images/active/ac_bm_icon3.png" />
                        <p>关注</p>
                    </dd>
                    <dd style="display: none"><%# Eval("activitiesID") %></dd>
                    <dd style="display: none"><%# Eval("Moneys") %></dd>

                </dl>

            </ItemTemplate>


        </asp:DataList>
       <form runat="server">

       
            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="9"
                HorizontalAlign="Center" Width="75%" Height="40px"
                meta:resourceKey="AspNetPager1" Style="font-size: 14px; margin: 0px auto; padding-top: 10px; margin-top: 20px; "
                AlwaysShow="false" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页"
                PrevPageText="上一页" SubmitButtonText="&nbsp;&nbsp;Go&nbsp;&nbsp;" SubmitButtonClass="submitBtn"
                CustomInfoStyle="font-size:14px;text-align:left;"
                InputBoxStyle="width:25px; border:1px solid #999999; text-align:center; "
                TextBeforeInputBox="转到第" TextAfterInputBox="页" PageIndexBoxType="TextBox"
                ShowPageIndexBox="Always" TextAfterPageIndexBox="&nbsp;&nbsp;页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                TextBeforePageIndexBox="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;转到&nbsp;&nbsp;" Font-Size="14px" CustomInfoHTML="共&lt;font color='#ff0000'&gt;%PageCount%&lt;/font&gt;页，第<font color='#ff0000'>%CurrentPageIndex%</font>页"
                ShowCustomInfoSection="Left" CustomInfoSectionWidth="19%"
                OnPageChanged="AspNetPager1_PageChanged" CssClass="anpager" CurrentPageButtonClass="cpb" PagingButtonSpacing="0" >
            </webdiyer:AspNetPager>
        </form>
            <form action="ActivitHandler.ashx" method="post" enctype="multipart/form-data">

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

            <div class="formde2" style="display: none; background-image: url(images/Acivit/弹框背景.png); background-repeat: no-repeat;">

                <h2>活动报名表</h2>
                <div class="titles"><span>________&nbsp;&nbsp;</span>一起来享受心跳的感觉吧！<span>_________&nbsp;&nbsp;</span></div>
                <ul>
                    <li><span>活动标题：</span><a href="#"></a>
                    </li>
                    <li><span>活动地点：</span><a href="#" style="margin-left: -14px"></a>
                    </li>
                    <li><span>活动时间：</span><a href="#" style="margin-left: -14px"></a>
                    </li>
                    <li><span>费用：</span><a href="#"></a><a href="#" style="display: none"></a>
                    </li>
                    <li><span>姓名：</span><input class="name1" name="name1" value="" type="text" /></li>
                    <li><span>手机号：</span> <i class="add_phone"><i class="hidden_phone1" data-type="1" />
                        <input id="phone1" class="phone1" name="phone1" value="<%=Session["tel"] %>" type="text" />
                        <input class="mobile_type" name="type" value="1" type="hidden" />
                        <input class="ids" name="idss" style="display: none" />
                        <input class="ids" name="userid" value="<%=Session["id"] %>" style="display: none" />
                    </i></i>
                    </li>
                    <li><span>身高：</span><select name="stature" class="height"><option value="129">129</option>
                        <option value="130">130</option>
                        <option value="131">131</option>
                        <option value="132">132</option>
                        <option value="133">133</option>
                        <option value="134">134</option>
                        <option value="135">135</option>
                        <option value="136">136</option>
                        <option value="137">137</option>
                        <option value="138">138</option>
                        <option value="139">139</option>
                        <option value="140">140</option>
                        <option value="141">141</option>
                        <option value="142">142</option>
                        <option value="143">143</option>
                        <option value="144">144</option>
                        <option value="145">145</option>
                        <option value="146">146</option>
                        <option value="147">147</option>
                        <option value="148">148</option>
                        <option value="149">149</option>
                        <option value="150">150</option>
                        <option value="151">151</option>
                        <option value="152">152</option>
                        <option value="153">153</option>
                        <option value="154">154</option>
                        <option value="155">155</option>
                        <option value="156">156</option>
                        <option value="157">157</option>
                        <option value="158">158</option>
                        <option value="159">159</option>
                        <option value="160">160</option>
                        <option value="161">161</option>
                        <option value="162">162</option>
                        <option value="163">163</option>
                        <option value="164">164</option>
                        <option value="165">165</option>
                        <option value="166">166</option>
                        <option value="167">167</option>
                        <option value="168">168</option>
                        <option value="169">169</option>
                        <option value="170" selected="selected">170</option>
                        <option value="171">171</option>
                        <option value="172">172</option>
                        <option value="173">173</option>
                        <option value="174">174</option>
                        <option value="175">175</option>
                        <option value="176">176</option>
                        <option value="177">177</option>
                        <option value="178">178</option>
                        <option value="179">179</option>
                        <option value="180">180</option>
                        <option value="181">181</option>
                        <option value="182">182</option>
                        <option value="183">183</option>
                        <option value="184">184</option>
                        <option value="185">185</option>
                        <option value="186">186</option>
                        <option value="187">187</option>
                        <option value="188">188</option>
                        <option value="189">189</option>
                        <option value="190">190</option>
                        <option value="191">191</option>
                        <option value="192">192</option>
                        <option value="193">193</option>
                        <option value="194">194</option>
                        <option value="195">195</option>
                        <option value="196">196</option>
                        <option value="197">197</option>
                        <option value="198">198</option>
                        <option value="199">199</option>
                        <option value="200">200</option>
                        <option value="201">201</option>
                        <option value="202">202</option>
                        <option value="203">203</option>
                        <option value="204">204</option>
                        <option value="205">205</option>
                        <option value="206">206</option>
                        <option value="207">207</option>
                        <option value="208">208</option>
                        <option value="209">209</option>
                        <option value="210">210</option>
                        <option value="211">210以上</option>
                    </select></li>
                    <li><span>职业：</span><select name="profession" class="occupation"><option value="销售" selected="selected">销售</option>
                        <option value="客户服务">客户服务</option>
                        <option value="计算机/互联网">计算机/互联网</option>
                        <option value="通信/电子">通信/电子</option>
                        <option value="生产/制造">生产/制造</option>
                        <option value="物流/仓储">物流/仓储</option>
                        <option value="商贸/采购">商贸/采购</option>
                        <option value="人事/行政">人事/行政</option>
                        <option value="高级管理">高级管理</option>
                        <option value="广告/市场">广告/市场</option>
                        <option value="传媒/艺术">传媒/艺术</option>
                        <option value="生物/制药">生物/制药</option>
                        <option value="医疗/护理">医疗/护理</option>
                        <option value="金融/银行/保险">金融/银行/保险</option>
                        <option value="建筑/房地产">建筑/房地产</option>
                        <option value="咨询/顾问">咨询/顾问</option>
                        <option value="法律">法律</option>
                        <option value="财会/审计">财会/审计</option>
                        <option value="教育/科研">教育/科研</option>
                        <option value="服务业">服务业</option>
                        <option value="交通运输">交通运输</option>
                        <option value="政府机构">政府机构</option>
                        <option value="军人">军人/警察</option>
                        <option value="农林牧渔">农林牧渔</option>
                        <option value="自由职业">自由职业</option>
                        <option value="在校学生">在校学生</option>
                        <option value="待业">待业</option>
                        <option value="其他行业">其他行业</option>
                        <option value="退休">退休</option>
                    </select></li>
                    <li><span>照片：</span>
                        <img id="pics" src="images/Acivit/shenfenimg_03.jpg" style="width: 200px; height: 230px;" />
                        <input id="upload" name="file" accept="image/*" type="file" style="display: none" />
                    </li>
                    <input name="pic_name_b" class="pic_name_b" value="" type="hidden">
                    <input name="pic_name_m" class="pic_name_m" value="" type="hidden">
                    <input name="pic_name_s" class="pic_name_s" value="" type="hidden">
                    <input name="pic_name" class="pic_name" value="" type="hidden">
                </ul>
                <div class="hnzstib">

                    <input value="确定报名" name="qd" style="background-image: url(images/Acivit/9zkauf0w.bmp)" class="hntijiao" type="submit" />
                    <input value="取消" name="qx" style="background-image: url(images/Acivit/9zkauf0w.bmp)" class="hnquxiao" type="button" />
                </div>
            </div>

            <%}%>
        </form>

    </div>
</asp:Content>
