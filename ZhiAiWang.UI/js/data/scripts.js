
var msgChecker;

$(function(){
	init_msg_checker();
	init_ajax_vip();
	
	//init_mobile_check();

	//init_ajax_login();
	//init_rember_me();


});



//判断之前是否有设置cookie，如果有，则设置【记住我】选择框 
/*
function init_rember_me(){
    if($.cookie('hong_username')!=undefined){  
        $("#remembere_me").attr("checked", true);  
    }else{  
        $("#remembere_me").attr("checked", false);  
    }  
      
    //读取cookie  
    if($('#remembere_me:checked').length>0){  
        $('#remembere_me').val($.cookie('hong_username'));  
        $('#password').val($.cookie('hong_password'));  
    }  
      
    //监听【记住我】事件  
    $("#remembere_me").click(function(){  
        if($('#remembere_me:checked').length>0){//设置cookie  
            $.cookie('hong_username', $('#username').val());  
            $.cookie('hong_password', $('#password').val());  
        }else{//清除cookie  
            $.removeCookie('hong_userName');  
            $.removeCookie('hong_password');  
        }  
    });  	
} */


function init_mobile_check(){
	$.get("./index.php?g=&m=User&a=check_follow", function(data){
		layer.open({
							  type: 1,
							  title: false,
							  //shade: false,
							  closeBtn: 1,
							  //area: ['432px','563px'],
							  skin: 'layui-layer-nobg', //没有背景色
							  //skin: 'layui-layer-rim', //加上边框
							  shadeClose: true,
							  content: data
						});
	});
	
}

//初始化申请VIP服务
function init_ajax_vip(){

	if ($('.ajax_vip').length > 0) {
		
    	$(document).on('click', '.ajax_vip', function() {
			//alert("ok");
			var uid = $('.mem_main').attr('data-mid');
    		var url = '/Vip/ajax_vip';
			$.ajax({
				url: url,
				type: 'GET',
				data:{uid:uid},
				success: function(result){
					if ($.isPlainObject(result)) {
						$.showError(result['info']?result['info']:'操作异常');
					} else {
						layer.open({
							  type: 1,
							  title: false,
							  //shade: false,
							  closeBtn: 1,
							  //area: ['432px','563px'],
							  skin: 'layui-layer-nobg', //没有背景色
							  //skin: 'layui-layer-rim', //加上边框
							  shadeClose: true,
							  content: result
						});
					}
				},
				error: function(result) {
					$.showError('抱歉，服务器出现错误');
				}
			});
    	});
    }	  
}

function init_ajax_event(){

	if ($('.ajax_vip').length > 0) {
    	$(document).on('click', '.ajax_vip', function() {
			//alert("ok");
    		var url = '/Event/ajax_event';
			$.ajax({
				url: url,
				type: 'GET',
				success: function(result){
					if ($.isPlainObject(result)) {
						$.showError(result['info']?result['info']:'操作异常');
					} else {
						layer.open({
							  type: 1,
							  title: false,
							  //shade: false,
							  closeBtn: 1,
							  //area: ['480px','600px'],
							  skin: 'layui-layer-nobg', //没有背景色
							  //skin: 'layui-layer-rim', //加上边框
							  shadeClose: true,
							  content: result
						});
					}
				},
				error: function(result) {
					$.showError('抱歉，服务器出现错误');
				}
			});
    	});
    }	  
}


//登录弹出
function ajax_login(){
	var url = '/Account/ajax_login';
		$.ajax({
			//url: '/account/ajax_login',
			url: url,
			type: 'GET',
			success: function(result){
				if ($.isPlainObject(result)) {
					$.showError(result['info']?result['info']:'操作异常');
				} else {
					layer.open({
					  type: 1,
					  title: false,
					  closeBtn: 0,
					  //area: '516px',
					  skin: 'layui-layer-nobg', //没有背景色
					  shadeClose: true,
					  content: result
					});

				}
			},
			error: function(result) {
				$.showError('抱歉，服务器出现错误');
			}
		});
}
//资料不完整的提示
function init_check_prompt(){
	//console.log(123);
	//var no_dialog = $.cookie('no_dialog');
	//if(no_dialog == 1) return;
	var url = '/User/check_prompt';
	//var url = 'User/check_user_field';
	$.ajax({
		url:url,
		type:'POST',
		success:function(data){
			if(!data.status){
				ajax_prompt();
			}else{
				return true;
			}
		}
	})
}


//完善资料
function ajax_prompt(){
	var url = '/User/ajax_prompt';
	//var url = '/account/ajax_login'
		$.ajax({
			//url: '/account/ajax_login',
			url: url,
			type: 'GET',
			success: function(result){
				if ($.isPlainObject(result)) {
					//$.showError(result['info']?result['info']:'操作异常');
				} else {
					layer.open({
					  type: 1,
					  title: false,
					  closeBtn: 1,
					  area: ['427px','315px'],
					  skin: 'layui-layer-nobg', //没有背景色
					  //shadeClose: true,
					  content: result
					});

				}
			},
			error: function(result) {
				$.showError('抱歉，服务器出现错误');
			}
		});
}

function dialog_close(){
	$("#dialog_prompt").hide();
	//$.cookie("no_dialog", 1, { expires: 1 });
	return;
}


function b_ajax_login(){
	layer.open({
	  type: 2,
	  title: false,
	  area: ['400px', '500px'],
	  //skin: 'layui-layer-rim', //加上边框
	  content: ['/index.php?m=Account&a=ajax_login']
	});
}



// 根据URL加载内容到本页面, 返回可能ajax结果对象
$.loadContent = function(url, options) {
    var defaultOptions = {
        type: 1,
        title: '操作弹窗',
        area: ['50%']
    };

    $.ajax({
        url: url,
        type: 'GET',
        success: function(result){
            if ($.isPlainObject(result)) {
                $.showError(result['info']?result['info']:'操作异常');
            } else {
                var opt = $.extend({}, defaultOptions, options, {'content': result});
                layer.open(opt);
            }
        },
        error: function(result) {
            $.showError('抱歉，服务器出现错误');
        }
    });
}


// 初始化短信按钮
function init_sms_btn(wrapper) {
    if (!wrapper) warper = '';

    $((wrapper ? wrapper + " " : "") + ".vsms-send[sms-sender!='sms-sender']").each(function (i, o) {
        $(o).attr("sms-sender", "sms-sender");

        var ticking = $(o).attr('ticking');
        if (parseInt(ticking) > 0)
            init_sms_code_btn($(o), ticking);
    });
}

// 关于短信验证码倒计时
function init_sms_code_btn(btn, ticking) {
    $(btn).attr('ticking', ticking);

    $(btn).prop('disabled', 'disabled');
    if (ticking == undefined)
        ticking = '...';
    $(btn).html("重新获取(" + ticking + ")");

    $(btn).everyTime(1000, function () {
        var lt = parseInt($(btn).attr("ticking"));
        lt--;

        $(btn).html("重新获取(" + lt + ")");
        $(btn).attr("ticking", lt);

        if (lt == 0) {
            $(btn).stopTime();
            $(btn).removeProp('disabled');
            $(btn).html("获取短信验证码");
        }
    });
}



/**
 * 检查用户新消息
 */
function init_msg_checker() {

	window.clearInterval(msgChecker);
	//var url = "{:U('Ajax/check_new_msg')}";
	var url = '/Ajax/check_new_msg';
	$.ajax({
		url:url,
		data: null,
		dataType: "json",
		type: "POST",
		global: false,
		success: function (data) {
			if (data['status']) {
				if (data['private'] >= 0 || data['system'] >= 0 ) {
					//$('#myMsg .text.msg').addClass('on');
						var count = parseInt(data['system']) + parseInt(data['private']);
						//console.info(count);

						$("#xx").text(count);
					if (data['private'] >= 0) {
						$('#private_msg').text(data['private']);
						
					} else {
						$('#private_msg').text('0');
					}

					if (data['system'] >= 0) {
						$('#system_msg').text(data['system']);
					} else {
						$('#system_msg').text('0');
					}

				}
			}

			msgChecker = window.setInterval("init_msg_checker()", 1000*60*8);
		}
	});
}

// AJAX 请求全局处理
function init_ajax_global_hanlder() {
	// AJAX 请求提示
	$(document).ajaxStart(function () {
		layer.load(1);
	})
	.ajaxStop(function () {
		layer.closeAll('loading');
	})
	.ajaxError(function (event, xhr, ajaxOptions, thrownError) {
		layer.closeAll('loading');
		$.showError('抱歉, 服务器出现错误');
	});
}
// 取消AJAX 请求全局处理
function remove_ajax_global_hanlder() {
	// AJAX 请求提示
	$(document).off('ajaxStart').off('ajaxStop');
}


// 错误验证
function form_err(ipt, txt) {
	//console.log(ipt);
	//var msgCntr = $(ipt).closest('.form-field').find(".err-tip");
	var msgCntr = $(ipt).closest('.form-field').find(".err-tip");
	console.log(msgCntr);
	if (msgCntr.length > 0) {
		console.log(txt);
		msgCntr.html("<span class='error'>" + txt + "</span>");
		msgCntr.show();
	}
}
function form_success(ipt, txt) {
	var msgCntr = $(ipt).closest('.form-field').find(".err-tip");
	if (txt != "") {
		msgCntr.html("<span class='success'>" + txt + "</span>");
		msgCntr.show();
	} else {
		msgCntr.html("<span class='success'>&nbsp;</span>");
		msgCntr.hide();
	}
}
function form_tip(ipt, txt) {
	var msgCntr = $(ipt).closest('.form-field').find(".err-tip");
	if (msgCntr.length > 0) {
		msgCntr.html("<span class='tip'>" + txt + "</span>");
		msgCntr.show();
	}
}
function form_tip_clear(ipt) {
	var msgCntr = $(ipt).closest('.form-field').find(".err-tip");
	if (msgCntr.length > 0){
		msgCntr.html("");
		msgCntr.show();
	}
}

// 红娘服务错误验证
function hn_form_err(ipt, txt) {
	//console.log(ipt);
	// var msgCntr = $(ipt).closest('.form-field').find(".err-tip");
	var msgCntr = $(ipt).find(".err-tip");
	//console.log(msgCntr);
	if (msgCntr.length > 0) {
		//console.log(txt);
		msgCntr.html("<span class='error'>" + txt + "</span>");
		msgCntr.show();
	}
}


/**
 * 验证用户字段
 * @param field 字段名称
 * @param value 值
 * @param user_id    会员ID
 * @param ipt    输入框
 */
var allow_ajax_check = true;
function ajax_check_field(field, value, user_id, ipt) {
	if (!allow_ajax_check)return;
	var query = {};
	query.act = "check_field";
	query.field = field;
	query.value = value;
	query.user_id = user_id;
	$.ajax({
		url: AJAX_URL,
		dataType: "json",
		data: query,
		type: "POST",
		global: false,
		success: function (data) {
			if (!data.status) {
				if (data.field) {
					form_err(ipt, data.info);
				}
				else
					$.showError(data.info);
			}
			else {
				form_success(ipt, data.info);
			}
		}
	});
}




