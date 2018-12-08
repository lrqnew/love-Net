$.browser = {
    'mozilla': /firefox/.test(navigator.userAgent.toLowerCase()),
    'webkit': /webkit/.test(navigator.userAgent.toLowerCase()),
    'opera': /opera/.test(navigator.userAgent.toLowerCase()),
    'msie': /msie/.test(navigator.userAgent.toLowerCase()),
    'version': 0,
};

// jQuery 直接扩展

/* 验证 */
$.minLength = function (value, length, isByte) {
    var strLength = $.trim(value).length;
    if (isByte)
        strLength = $.getStringLength(value);

    return strLength >= length;
};

$.maxLength = function (value, length, isByte) {
    var strLength = $.trim(value).length;
    if (isByte)
        strLength = $.getStringLength(value);

    return strLength <= length;
};
$.getStringLength = function (str) {
    str = $.trim(str);

    if (str == "")
        return 0;

    var length = 0;
    for (var i = 0; i < str.length; i++) {
        if (str.charCodeAt(i) > 255)
            length += 2;
        else
            length++;
    }

    return length;
};

$.checkMobilePhone = function (value) {
    if ($.trim(value) != '') {
        var reg = /^(1[34578]\d{9})$/;
        return reg.test($.trim(value));
    }
    else
        return true;
};
$.checkEmail = function (val) {
    var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
    return reg.test(val);
};

/**
 * 用于未来扩展的提示正确错误的JS
 *
 * @param str
 * @param func
 */
$.showError = function(str, func) {
    var duixiuErrorBox = swal({
            title: '中国红娘网提醒您',
            text: str,
            //type: "error",
            imageUrl: "http://www.hongniang.com/public/home/images/dlshibai.png",
			      timer: 3000,
			      showConfirmButton: false
        }, func );
};

$.showSuccess = function(str, func) {

    var duixiuSuccessBox = swal({
            title: '中国红娘网提醒您',
            text: str,
            //type: "success",
            imageUrl: "http://www.hongniang.com/public/home/images/dlsuccess.png",
			      timer: 3000,
			      showConfirmButton: false
        }, func );
		
};


$.showMessage = function(str, func) {
    var duixiuMessageBox = swal({
        text: str,
        title: '信息',
		    type: "success",
		    timer: 3000,
		    showConfirmButton: false
    }, func);
};


$.showConfirm = function(str, url) {
	swal({
		title: "中国红娘网提醒您",
		text: str,
		//type: "warning",
    imageUrl: "http://www.hongniang.com/public/home/images/dlshibai.png",
		showCancelButton: true,
		cancelButtonText:"取消",
		confirmButtonColor: "#DD6B55",
		confirmButtonText: "开通会员"
	}, function(){   
    location.href = url;
  });
};




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

// 工具函数

/**
 * 检测密码的复杂度
 * @param pwd
 * 分数 1-2:弱 3-4:中 5-6:强
 * 返回 0:弱 1:中 2:强 -1:无
 */
function checkPwdFormat(pwd) {
    var regex0 = /[a-z]+/;
    var regex1 = /[A-Z]+/;
    var regex2 = /[0-9]+/;
    var regex3 = /\W+/;   //符号
    var regex4 = /\S{6,8}/;
    var regex5 = /\S{9,}/;

    var result = 0;

    if (regex0.test(pwd))result++;
    if (regex1.test(pwd))result++;
    if (regex2.test(pwd))result++;
    if (regex3.test(pwd))result++;
    if (regex4.test(pwd))result++;
    if (regex5.test(pwd))result++;

    if (result >= 1 && result <= 2)
        result = 0;
    else if (result >= 3 && result <= 4)
        result = 1;
    else if (result >= 5 && result <= 6)
        result = 2;
    else
        result = -1;

    return result;
}

/**
 * 模拟smarty的截取扩展
 * @param  {[type]} content [description]
 * @param  {[type]} size    [description]
 * @return {[type]}         [description]
 */
function sub_str(content, size) {
    var _COLLAPSE = "...";
    return content.length <= size ? content : content.substr(0, size) + _COLLAPSE;
}

/**
 * 模拟smarty的获取图片
 * @param  {[type]} url  [description]
 * @param  {[type]} size [description]
 * @return {[type]}      [description]
 */
function get_url(url, size) {
    return url.substr(0, url.length - 5) + '.w' + size + url.substr(url.length - 5, url.length);
}

// 其他扩展

(function($) {


    /**
     * 延时加载图片
     *
     */
    $.fn.ui_lazy = function(options) {
        var op = {
            placeholder: "",
            src: "",
            refresh: false
        };
        options = $.extend({}, op, options);
        var imgs = this;
        imgs.each(function() {
            var img = $(this);
            var scrolltop = $(window).scrollTop();
            var windheight = $(window).height();
            var imgoffset = img.offset().top;
            if (!img.attr("loaded") || options.refresh) {
                $(img).attr("src", options.placeholder);
                if (windheight + scrolltop >= imgoffset && scrolltop <= imgoffset + img.height()) {
                    if (options.src != "")
                        img.attr("src", options.src);
                    else
                        img.attr("src", img.attr("data-src"));
                    img.attr("loaded", true);
                }
            }
        });
    },

    /**
     * 显示或者隐藏 Select 中 的 option 项目
     *
     * @param  {bool} show 是否显示
     */
    $.fn.toggleOption = function(show) {
        $(this).toggle( show );
        if(show) {
            if($(this).parent('span.toggleOption').length)
                $(this).unwrap();
        } else {
            if($(this).parent('span.toggleOption').length == 0 )
                $(this).wrap('<span class="toggleOption" style="display: none;" />');
        }
    };

})(jQuery);

// 原型扩展
!function () {

    function ex(aObj, aEx) {
        for (var key in aEx) {
            aObj[key] = aEx[key];
        }
    }

    /**
     * models Date原型扩展
     * @class Date.prototype
     */
    ex(Date.prototype,{
        /**
         * 返回中文，星期几
         * @method qGetWeekStr
         * @return {String}
         */
        dGetWeekStr:function () {
            return '星期' + ["日","一","二","三","四","五","六"][this.getDay()];
        },

        /**
         * 设置几天之后的日期
         * @method qAddDate
         * @param {Number} aNum
         */
        dAddDate:function (aNum) {
            this.setDate( this.getDate() + aNum );
            return this;
        },

        /**
         * 转换成字符串 类似 2014-1-1 ， 可以自定义分隔符
         * @method qToString
         * @param {String} aSplit 分隔符
         */
         dToString:function (aSplit) {
            var  str = [ this.getFullYear(), this.getMonth()+1, this.getDate() ];
            return str.join(aSplit||'-');
        }

    });


    /**
     * models String原型扩展
     * @class String.prototype
     */
    ex(String.prototype, {
        /**
         * 转换成 Date 对象
         * @method qToDate
         * @param {String} aSplit 分隔符
         * @return {Date}
         */
        dToDate:function (aSplit) {
            var s = this.split(aSplit||'-');
            s = [s[0]|0, (s[1]|0)-1, s[2]|0];
            var d = new Date(s[0],s[1],s[2]);
            s.length=0;
            s=null;
            return d;
        },

        /**
         * 转换成 两位整数 不足补零
         * @method qToIntFixed
         * @param {Number} aLen 要转换成几位
         * @return {String}
         */
        dToIntFixed:function () {
            var n = this|0;
            return n<10 ? '0'+n : n.toString();
        },

        /**
         * 转换成 html 代码，替换回车等特殊字符
         * @method qToHTML
         * @return {String}
         */
        dToHTML:function () {
            return this
                       .replace(/</gi,"&lt;")
                       .replace(/>/gi,"&gt;")
                       .replace(/\n/gi,"<br />")
                       .replace(/\t/gi,"&nbsp;&nbsp;&nbsp;&nbsp;");
        }
    });

}();

/**
 * Replacement for toggle
 */
jQuery.fn.toggle = function( fn, fn2 ) {
 // Don't mess with animation or css toggles
 if ( !jQuery.isFunction( fn ) || !jQuery.isFunction( fn2 ) ) {
return oldToggle.apply( this, arguments );
 }
 // Save reference to arguments for access in closure
 var args = arguments,
 guid = fn.guid || jQuery.guid++,
 i = 0,
 toggler = function( event ) {
  // Figure out which function to execute
  var lastToggle = ( jQuery._data( this, "lastToggle" + fn.guid ) || 0 ) % i;
  jQuery._data( this, "lastToggle" + fn.guid, lastToggle + 1 );
  // Make sure that clicks stop
  event.preventDefault();
  // and execute the function
  return args[ lastToggle ].apply( this, arguments ) || false;
 };
 // link all the functions, so any of them can unbind this click handler
 toggler.guid = guid;
 while ( i < args.length ) {
 args[ i++ ].guid = guid;
 }
 return this.click( toggler );
};
