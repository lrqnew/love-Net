<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegInfo.aspx.cs" Inherits="ZhiAiWang.UI.RegInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>注册信息</title>
    <link href="css/reginfo.css" rel="stylesheet" />
</head>
<body>
    <form runat="server" id="info_form">
        <div class="form_box">
            <div class="box_message">
                <div class="mes">
                   
                    <h3>您的固定信息</h3>
                    <p>您是一位<asp:Label ID="Label1" runat="server" Text=""></asp:Label>士，<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>出生，未婚，<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>学历，身高<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>cm</p>
                </div>
                <a href="javascript:void(0)" class="my_whgx">我要修改</a>
                <!--我要修改固定信息-->
            </div>
            <div class="form_message">
              
                    <ul>
                        <li>
                            
                            <asp:TextBox ID="TextBox1" CssClass="tex" runat="server" Visible="False"></asp:TextBox>
                            <span>手机：</span><input name="mobile" value="<%=Session["tel"] %>" readonly="readonly" type="text"/>
                            <em>（让您可免费获得网站的征婚进展提醒短信<a href="#" class="ph_xg">修改</a>）</em> </li>
                        <li class="two" style="position: relative"><span>工作地区：</span>
                            <input runat="server" id="adress" class="p_name" value="" style="width:227px;" name="workprovince" type="text"/>
                            <em></em>
                            <input name="workarea" value="" class="h_area" type="hidden"/>
                            <input name="workcity" value="" class="h_city" type="hidden"/>
                            <em></em>
                            <div class="three_select" id="shenfen">
                                <!--省份-->
                                <h6>请选择省/直辖市</h6>
                                <div class="province_three">
                                </div>
                            </div>
                            <div class="three_select2">
                                <!--城市选择-->
                                <h6>请选择市/区</h6>
                                <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 242px;">
                                    <div class="three_city" style="max-height: 242px; overflow: hidden; width: auto; height: 242px;"></div>
                                    <div class="slimScrollBar" style="background: rgb(218, 190, 174) none repeat scroll 0% 0%; width: 7px; position: absolute; top: 0px; opacity: 0.7; display: none; border-radius: 7px; z-index: 99; right: 1px;"></div>
                                    <div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div>
                                </div>
                            </div>
                            <!--三级点击出现选择-->
                        </li>
                        <li><span>学历：</span>
                            <asp:DropDownList ID="DropDownList1" runat="server" BackColor="White">
                                <asp:ListItem>请选择</asp:ListItem>
                                <asp:ListItem>高中以下</asp:ListItem>
                                <asp:ListItem>中专</asp:ListItem>
                                <asp:ListItem>大专</asp:ListItem>
                                <asp:ListItem>大学本科</asp:ListItem>
                                <asp:ListItem>硕士</asp:ListItem>
                                <asp:ListItem>博士</asp:ListItem>
                                <asp:ListItem>高中及以下</asp:ListItem>
                                <asp:ListItem>中专</asp:ListItem>
                                <asp:ListItem>大专</asp:ListItem>
                                <asp:ListItem>硕士</asp:ListItem>
                                <asp:ListItem>博士</asp:ListItem>
                                  </asp:DropDownList>
                            </li>
                        <li><span>年收入：</span>
                            <asp:DropDownList ID="DropDownList2" runat="server" BackColor="White">
                                <asp:ListItem>请选择</asp:ListItem>
                                <asp:ListItem>1-5万元</asp:ListItem>
                                <asp:ListItem>5-10万元</asp:ListItem>
                                <asp:ListItem>10-15万元</asp:ListItem>
                                <asp:ListItem>15-20万元</asp:ListItem>
                                <asp:ListItem>20-35万元</asp:ListItem>
                                <asp:ListItem>35-50万元</asp:ListItem>
                                <asp:ListItem>50-100万元</asp:ListItem>
                                <asp:ListItem>100万元以上</asp:ListItem>
                                <asp:ListItem>大专</asp:ListItem>
                                <asp:ListItem>硕士</asp:ListItem>
                                <asp:ListItem>博士</asp:ListItem>
                                  </asp:DropDownList>
                            </li>
                        <li><span>身高：</span>
                            <asp:DropDownList ID="DropDownList3" runat="server" BackColor="White">
                            <asp:ListItem>请选择</asp:ListItem>
                            <asp:ListItem>130</asp:ListItem>
                            <asp:ListItem>131</asp:ListItem>
                            <asp:ListItem>132</asp:ListItem>
                            <asp:ListItem>133</asp:ListItem>
                            <asp:ListItem>134</asp:ListItem>
                            <asp:ListItem>135</asp:ListItem>
                            <asp:ListItem>136</asp:ListItem>
                            <asp:ListItem>137</asp:ListItem>
                            <asp:ListItem>138</asp:ListItem>
                            <asp:ListItem>139</asp:ListItem>
                            <asp:ListItem>140</asp:ListItem>
                            <asp:ListItem>141</asp:ListItem>
                            <asp:ListItem>142</asp:ListItem>
                            <asp:ListItem>143</asp:ListItem>
                            <asp:ListItem>144</asp:ListItem>
                            <asp:ListItem>145</asp:ListItem>
                            <asp:ListItem>146</asp:ListItem>
                            <asp:ListItem>147</asp:ListItem>
                            <asp:ListItem>148</asp:ListItem>
                            <asp:ListItem>149</asp:ListItem>
                            <asp:ListItem>150</asp:ListItem>
                            <asp:ListItem>151</asp:ListItem>
                            <asp:ListItem>152</asp:ListItem>
                            <asp:ListItem>153</asp:ListItem>
                            <asp:ListItem>154</asp:ListItem>
                            <asp:ListItem>155</asp:ListItem>
                            <asp:ListItem>156</asp:ListItem>
                            <asp:ListItem>157</asp:ListItem>
                            <asp:ListItem>158</asp:ListItem>
                            <asp:ListItem>159</asp:ListItem>
                            <asp:ListItem>160</asp:ListItem>
                            <asp:ListItem>161</asp:ListItem>
                            <asp:ListItem>162</asp:ListItem>
                            <asp:ListItem>163</asp:ListItem>
                            <asp:ListItem>164</asp:ListItem>
                            <asp:ListItem>165</asp:ListItem>
                            <asp:ListItem>166</asp:ListItem>
                            <asp:ListItem>167</asp:ListItem>
                            <asp:ListItem>168</asp:ListItem>
                            <asp:ListItem>169</asp:ListItem>
                            <asp:ListItem>170</asp:ListItem>
                            <asp:ListItem>171</asp:ListItem>
                            <asp:ListItem>172</asp:ListItem>
                            <asp:ListItem>173</asp:ListItem>
                            <asp:ListItem>174</asp:ListItem>
                            <asp:ListItem>175</asp:ListItem>
                            <asp:ListItem>176</asp:ListItem>
                            <asp:ListItem>177</asp:ListItem>
                            <asp:ListItem>178</asp:ListItem>
                            <asp:ListItem>179</asp:ListItem>
                            <asp:ListItem>180</asp:ListItem>
                            <asp:ListItem>181</asp:ListItem>
                            <asp:ListItem>182</asp:ListItem>
                            <asp:ListItem>183</asp:ListItem>
                            <asp:ListItem>184</asp:ListItem>
                            <asp:ListItem>185</asp:ListItem>
                            <asp:ListItem>186</asp:ListItem>
                            <asp:ListItem>187</asp:ListItem>
                            <asp:ListItem>188</asp:ListItem>
                            <asp:ListItem>189</asp:ListItem>
                            <asp:ListItem>190</asp:ListItem>
                            <asp:ListItem>191</asp:ListItem>
                            <asp:ListItem>192</asp:ListItem>
                            <asp:ListItem>193</asp:ListItem>
                            <asp:ListItem>194</asp:ListItem>
                            <asp:ListItem>195</asp:ListItem>
                            <asp:ListItem>196</asp:ListItem>
                            <asp:ListItem>197</asp:ListItem>
                            <asp:ListItem>198</asp:ListItem>
                            <asp:ListItem>199</asp:ListItem>
                            <asp:ListItem>200</asp:ListItem>
                                  </asp:DropDownList>
                            <em>cm（仅能修改一次）</em></li>
                        <li><span>住房条件：</span>
                             <asp:DropDownList ID="DropDownList5" runat="server" BackColor="White">
                                 <asp:ListItem>请选择</asp:ListItem>
                                <asp:ListItem>和家人同住</asp:ListItem>
                                <asp:ListItem>已购房</asp:ListItem>
                                <asp:ListItem>租房</asp:ListItem>
                                <asp:ListItem>打算婚后购房</asp:ListItem>
                                <asp:ListItem>单位宿舍</asp:ListItem>
                                  </asp:DropDownList>
                            </li>
                        <li><span>婚姻状况：</span>
                            <asp:DropDownList ID="DropDownList4" runat="server" BackColor="White">
                                <asp:ListItem>请选择</asp:ListItem>
                                <asp:ListItem>结过婚</asp:ListItem>
                                <asp:ListItem>未结过婚</asp:ListItem>
                                </asp:DropDownList>
                        </li>
                    </ul>
                    <div class="btn_box">
                        <asp:Button ID="Button1" runat="server" Text="保存并继续" OnClick="Button1_Click" />
                        
                        <a href="InnerMonologue.aspx" target="_self">跳过</a> </div>
               
            </div>
        </div>

    </form>
</body>
</html>
