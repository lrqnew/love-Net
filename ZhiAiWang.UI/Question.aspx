<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Question.aspx.cs" Inherits="ZhiAiWang.UI.Question" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <link href="css/bootstrap.css" rel="stylesheet" />

    <link href="css/icon.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/link.css" rel="stylesheet" />
    <link href="css/common.css" rel="stylesheet" />

</head>
<body>

    <div>
        <div class="aw-top-menu-wrap">
            <div class="container">
                <!-- logo -->
                <div class="aw-logo hidden-xs">
                    <a href="#"></a>
                </div>
                <!-- end logo -->
                <!-- 搜索框 -->
                <div class="aw-search-box  hidden-xs hidden-sm">
                    <form class="navbar-search" action="#" id="global_search_form" method="post">
                        <input class="form-control search-query" type="text" placeholder="搜索问题、话题或人" autocomplete="off" name="q" id="aw-search-query" />
                        <span title="搜索" id="global_search_btns" onclick="$('#global_search_form').submit();"><i class="icon icon-search"></i></span>
                        <div class="aw-dropdown">
                            <div class="mod-body">
                                <p class="title">输入关键字进行搜索</p>
                                <ul class="aw-dropdown-list collapse"></ul>
                                <p class="search"><span>搜索:</span><a onclick="$('#global_search_form').submit();"></a></p>
                            </div>
                            <div class="mod-footer">
                                <a href="#" onclick="$('#header_publish').click();" class="pull-right btn btn-mini btn-success publish">发起问题</a>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- end 搜索框 -->
                <!-- 导航 -->
                <div class="aw-top-nav navbar">
                    <div class="navbar-header">
                        <button class="navbar-toggle pull-left">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <nav role="navigation" class="collapse navbar-collapse bs-navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="index.aspx">首页</a></li>
                            <li><a href="#" class="active">发现</a></li>
                            <li><a href="#">话题</a></li>
                            <li>
                                <a style="font-weight: bold;">· · ·</a>
                                <div class="dropdown-list pull-right">
                                    <ul id="extensions-nav-list">
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </nav>
                </div>
                <!-- end 导航 -->
                <!-- 用户栏 -->
                <div class="aw-user-nav">
                    <!-- 登陆&注册栏 -->
                    <a class="login btn btn-normal btn-primary" href="login.aspx">登录</a>
                    <a class="register btn btn-normal btn-success" href="regested.aspx">注册</a>
                    <!-- end 登陆&注册栏 -->
                </div>
                <!-- end 用户栏 -->
                <!-- 发起 -->
                <!-- end 发起 -->
            </div>
        </div>


        <div class="aw-container-wrap">
            <div class="container category">
                <div class="row">
                    <div class="col-sm-12">
                        <dl>
                            <img src="images/Quession/08_avatar_mid.jpg" />
                            <dt>
                                <img src="images/Quession/2.jpg" alt="情感咨询"></dt>
                            <dd>
                                <p class="title"><a href="#">情感咨询</a></p>
                                <span>真爱难求，想咨询情感问题就点这里</span>
                            </dd>
                        </dl>
                        <dl>
                            <dt>
                                <img src="images/Quession/10.jpg" alt="我要脱单"></dt>
                            <dd>
                                <p class="title"><a href="#">我要脱单</a></p>
                                <span>脱单不是口号，马上行动起来</span>
                            </dd>
                        </dl>
                        <dl>
                            <dt>
                                <img src="images/Quession/3.jpg" alt="专家在线"></dt>
                            <dd>
                                <p class="title"><a href="#">专家在线</a></p>
                                <span>中国红娘情感专家为您答疑解惑</span>
                            </dd>
                        </dl>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="aw-content-wrap clearfix">
                        <div class="col-sm-12 col-md-9 aw-main-content">
                            <!-- 新消息通知 -->
                            <div class="aw-mod aw-notification-box collapse" id="index_notification">
                                <div class="mod-head common-head">
                                    <h2>
                                        <span class="pull-right"><a href="#" class="text-color-999">通知设置</a></span>
                                        <i class="icon icon-bell"></i>新通知<em class="badge badge-important" name="notification_unread_num"></em>
                                    </h2>
                                </div>
                                <div class="mod-body">
                                    <ul id="notification_list"></ul>
                                </div>
                                <div class="mod-footer clearfix">
                                    <a href="javascript:;" onclick="AWS.Message.read_notification(false, 0, false);" class="pull-left btn btn-mini btn-gray">我知道了</a>
                                    <a href="#" class="pull-right btn btn-mini btn-success">查看所有</a>
                                </div>
                            </div>
                            <!-- end 新消息通知 -->
                            <!-- tab切换 -->
                            <ul class="nav nav-tabs aw-nav-tabs active hidden-xs">
                                <li><a href="#">等待回复</a></li>
                                <li><a href="#" id="sort_control_hot">热门</a></li>
                                <li><a href="#">推荐</a></li>
                                <li class="active"><a href="#">最新</a></li>

                                <h2 class="hidden-xs">发现</h2>
                            </ul>
                            <!-- end tab切换 -->


                            <div class="aw-mod aw-explore-list">
                                <div class="mod-body">
                                    <div class="aw-common-list">
                                        <div class="aw-item active" data-topic-id="">
                                            <a class="aw-user-name hidden-xs" data-id="96" href="#" rel="nofollow">
                                                <img src="http://wenda.hongniang.com/static/common/avatar-max-img.png" alt="" /></a>
                                            <div class="aw-question-content">
                                                <h4>
                                                    <a href="http://wenda.hongniang.com/question/182">找大龄的女的</a>
                                                </h4>
                                                <a href="http://wenda.hongniang.com/question/182#!answer_form" class="pull-right text-color-999">回复</a>

                                                <p>
                                                    <a class="aw-question-tags" href="http://wenda.hongniang.com/explore/category-2">我要脱单</a>
                                                    • <a href="http://wenda.hongniang.com/people/%E6%89%8D%E5%93%A6%E4%B8%AA" class="aw-user-name">才哦个</a>				<span class="text-color-999">发起了问题 • 1 人关注 • 0 个回复 • 103 次浏览 • 2018-03-06 18:57				</span>
                                                    <span class="text-color-999 related-topic collapse">• 来自相关话题</span>
                                                </p>

                                            </div>
                                        </div>
                                        <div class="aw-item active" data-topic-id="">
                                            <a class="aw-user-name hidden-xs" data-id="95" href="#" rel="nofollow">
                                                <img src="images/Quession/avatar-max-img.png" /></a>
                                            <div class="aw-question-content">
                                                <h4>
                                                    <a href="#">fe58c70d7b2f162b00345c45931b5031  不知该不该继续？</a>
                                                </h4>
                                                <a href="#" class="pull-right text-color-999">回复</a>

                                                <p>
                                                    <a class="aw-question-tags" href="#">情感咨询</a>
                                                    •<a href="#" class="aw-user-name">gl1457960</a><span class="text-color-999">发起了问题 • 1 人关注 • 0 个回复 • 176 次浏览 • 2018-02-27 05:09				</span>
                                                    <span class="text-color-999 related-topic collapse">• 来自相关话题</span>
                                                </p>

                                            </div>
                                        </div>
                                        <div class="aw-item active" data-topic-id="">
                                            <a class="aw-user-name hidden-xs" data-id="91" href="#" rel="nofollow">
                                                <img src="images/Quession/avatar-max-img.png" /></a>
                                            <div class="aw-question-content">
                                                <h4>
                                                    <a href="#">我对她的关心成了她对我的依赖</a>
                                                </h4>
                                                <a href="#" class="pull-right text-color-999">回复</a>

                                                <p>
                                                    <a class="aw-question-tags" href="#">情感咨询</a>
                                                    • 													<a href="#" class="aw-user-name">会员10791641</a>				<span class="text-color-999">发起了问题 • 1 人关注 • 0 个回复 • 427 次浏览 • 2018-01-13 02:19				</span>
                                                    <span class="text-color-999 related-topic collapse">• 来自相关话题</span>
                                                </p>

                                            </div>
                                        </div>
                                        <div class="aw-item active" data-topic-id="">
                                            <a class="aw-user-name hidden-xs" href="javascript:;">
                                                <img src="images/Quession/avatar-max-img.png"/></a>
                                            <div class="aw-question-content">
                                                <h4>
                                                    <a href="#">在两个人没有沟通话题，有事聊聊天，没事就就没有话题聊，对于夫妻，是个什么</a>
                                                </h4>
                                                <a href="#" class="pull-right text-color-999">回复</a>

                                                <p>
                                                    <a class="aw-question-tags" href="#">情感咨询</a>
                                                    • 									<a href="javascript:;" class="aw-user-name" data-id="">匿名用户</a>				<span class="text-color-999">发起了问题 • 1 人关注 • 0 个回复 • 811 次浏览 • 2017-10-20 14:42				</span>
                                                    <span class="text-color-999 related-topic collapse">• 来自相关话题</span>
                                                </p>

                                            </div>
                                        </div>
                                        <div class="aw-item active" data-topic-id="">
                                            <a class="aw-user-name hidden-xs" data-id="81" href="#" rel="nofollow">
                                                <img src="images/Quession/avatar-max-img.png" /></a>
                                            <div class="aw-question-content">
                                                <h4>
                                                    <a href="#">领证前的困惑</a>
                                                </h4>
                                                <a href="#" class="pull-right text-color-999">回复</a>

                                                <p>
                                                    <a class="aw-question-tags" href="#">专家在线</a>
                                                    • 													<a href="#" class="aw-user-name">会员10650678</a>				<span class="text-color-999">发起了问题 • 1 人关注 • 0 个回复 • 877 次浏览 • 2017-09-24 23:15				</span>
                                                    <span class="text-color-999 related-topic collapse">• 来自相关话题</span>
                                                </p>

                                            </div>
                                        </div>
                                        <div class="aw-item " data-topic-id="">
                                            <a class="aw-user-name hidden-xs" data-id="34" href="#" rel="nofollow">
                                                <img src="images/Quession/avatar-max-img.png" /></a>
                                            <div class="aw-question-content">
                                                <h4>
                                                    <a href="http://wenda.hongniang.com/question/172">谈恋爱不滚床单正常吗 谈恋爱一定要做爱吗</a>
                                                </h4>
                                                <div class="pull-right hidden-xs contribute">
                                                    <span class="pull-right text-color-999">贡献</span>
                                                    <a class="aw-user-name" data-id="12" href="#" rel="nofollow">
                                                        <img src="Quession/avatar-max-img.png" /></a>
                                                    <a class="aw-user-name" data-id="33" href="#" rel="nofollow">
                                                        <img src="images/Quession/avatar-max-img.png" /></a>
                                                </div>

                                                <p>
                                                    <a class="aw-question-tags" href="#">我要脱单</a>
                                                    • 									<a href="#" class="aw-user-name" data-id="12">蓝精灵</a>				<span class="text-color-999">回复了问题 • 5 人关注 • 4 个回复 • 858 次浏览 • 2017-09-04 09:18				</span>
                                                    <span class="text-color-999 related-topic collapse">• 来自相关话题</span>
                                                </p>

                                            </div>
                                        </div>
                                        <div class="aw-item " data-topic-id="">
                                            <a class="aw-user-name hidden-xs" data-id="33" href="#" rel="nofollow">
                                                <img src="images/Quession/avatar-max-img.png" /></a>
                                            <div class="aw-question-content">
                                                <h4>
                                                    <a href="#">你怎么看待打过胎的女生？</a>
                                                </h4>
                                                <div class="pull-right hidden-xs contribute">
                                                    <span class="pull-right text-color-999">贡献</span>
                                                    <a class="aw-user-name" data-id="12" href="#" rel="nofollow">
                                                        <img src="images/Quession/avatar-max-img.png" /></a>
                                                </div>

                                                <p>
                                                    <a class="aw-question-tags" href="#">情感咨询</a>
                                                    • 									<a href="#" class="aw-user-name" data-id="12">蓝精灵</a>				<span class="text-color-999">回复了问题 • 2 人关注 • 1 个回复 • 686 次浏览 • 2017-09-04 09:17				</span>
                                                    <span class="text-color-999 related-topic collapse">• 来自相关话题</span>
                                                </p>

                                            </div>
                                        </div>
                                        <div class="aw-item " data-topic-id="">
                                            <a class="aw-user-name hidden-xs" data-id="29" href="#" rel="nofollow">
                                                <img src="images/Quession/avatar-max-img.png" /></a>
                                            <div class="aw-question-content">
                                                <h4>
                                                    <a href="#">你怎样看待用香水的男人？</a>
                                                </h4>
                                                <div class="pull-right hidden-xs contribute">
                                                    <span class="pull-right text-color-999">贡献</span>
                                                    <a class="aw-user-name" data-id="8" href="#" rel="nofollow">
                                                        <img src="images/Quession/avatar-max-img.png" /></a>
                                                    <a class="aw-user-name" data-id="33" href="#" rel="nofollow">
                                                        <img src="images/Quession/avatar-max-img.png" /></a>
                                                </div>

                                                <p>
                                                    <a class="aw-question-tags" href="#">我要脱单</a>
                                                    •<a href="#" class="aw-user-name" data-id="8">woaiwojia</a>
                                                    <span class="text-color-999">回复了问题 • 3 人关注 • 3 个回复 • 699 次浏览 • 2017-09-04 09:16				</span>
                                                    <span class="text-color-999 related-topic collapse">• 来自相关话题</span>
                                                </p>

                                            </div>
                                        </div>
                                        <div class="aw-item " data-topic-id="">
                                            <a class="aw-user-name hidden-xs" data-id="32" href="#" rel="nofollow">
                                                <img src="images/Quession/avatar-max-img.png" /></a>
                                            <div class="aw-question-content">
                                                <h4>
                                                    <a href="#">怎么在男人面前保持神秘感 成为有神秘感的女人</a>
                                                </h4>
                                                <a href="#" class="pull-right text-color-999">回复</a>

                                                <p>
                                                    <a class="aw-question-tags" href="#">情感咨询</a>
                                                    • <a href="javascript:;" class="aw-user-name">匿名用户</a>
                                                    <span class="text-color-999">回复了问题 • 1 人关注 • 1 个回复 • 994 次浏览 • 2017-08-31 16:29				</span>
                                                    <span class="text-color-999 related-topic collapse">• 来自相关话题</span>
                                                </p>

                                            </div>
                                        </div>
                                        <div class="aw-item active" data-topic-id="">
                                            <a class="aw-user-name hidden-xs" data-id="31" href="#" rel="nofollow">
                                                <img src="images/Quession/avatar-max-img.png" /></a>
                                            <div class="aw-question-content">
                                                <h4>
                                                    <a href="#">父母不同意我相处四年的外地男友</a>
                                                </h4>
                                                <a href="#" class="pull-right text-color-999">回复</a>

                                                <p>
                                                    <a class="aw-question-tags" href="#">情感咨询</a>
                                                    • <a href="#" class="aw-user-name">Cassiel</a>
                                                    <span class="text-color-999">发起了问题 • 1 人关注 • 0 个回复 • 950 次浏览 • 2017-08-30 09:29				</span>
                                                    <span class="text-color-999 related-topic collapse">• 来自相关话题</span>
                                                </p>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="mod-footer">
                                    <div class="page-control">
                                        <ul class="pagination pull-right">
                                            <li class="active"><a href="javascript:;">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">&gt;</a></li>
                                            <li><a href="#">&gt;&gt;</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 侧边栏 -->
                        <div class="col-sm-12 col-md-3 aw-side-bar hidden-xs hidden-sm">
                            <div class="aw-mod aw-text-align-justify">
                                <div class="mod-head">
                                    <a href="#" class="pull-right">更多 &gt;</a>
                                    <h3>热门话题</h3>
                                </div>
                                <div class="mod-body">
                                </div>
                            </div>
                            <div class="aw-mod aw-text-align-justify">
                                <div class="mod-head">
                                    <a href="#" class="pull-right">更多 &gt;</a>
                                    <h3>热门用户</h3>
                                </div>
                                <div class="mod-body">

                                    <dl>
                                        <dt class="pull-left aw-border-radius-5">
                                            <a href="#">
                                                <img alt="#" src="http://Quession/avatar-mid-img.png" /></a>
                                        </dt>
                                        <dd class="pull-left">
                                            <a href="#" data-id="92" class="aw-user-name">红爸爸						</a>
                                            <p class="signature"></p>
                                            <p><b>0</b> 个问题, <b>0</b> 次赞同</p>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                        <!-- end 侧边栏 -->
                    </div>
                </div>
            </div>
        </div>

        <div class="aw-footer-wrap">
            <div class="aw-footer">
                Copyright © 2018<span class="hidden-xs"> - 浙ICP备浙B2-20090133, All Rights Reserved</span>

                <span class="hidden-xs">Powered By <a href="#" target="blank">中国红娘网</a></span>

            </div>
        </div>

        <a class="aw-back-top hidden-xs" href="javascript:;" onclick="$.scrollTo(1, 600, {queue:true});"><i class="icon icon-up"></i></a>
    </div>

</body>
</html>
