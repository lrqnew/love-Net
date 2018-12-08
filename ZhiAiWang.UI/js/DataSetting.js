
 
    var curMenu = null, zTree_Menu = null;
    var setting = {
        view: {
        showLine: false,
            showIcon: false,
            selectedMulti: false,
            dblClickExpand: false,
            addDiyDom: addDiyDom
        },
        data: {
        simpleData: {
        enable: true
            }
        },
        callback: {
        beforeClick: beforeClick
        }
    };

    var zNodes = [
        {id: 1, pId: 0, name: "基本资料", icon: "images/gerenzhongxin/centernavicn1.png", open: true},
        {id: 11, pId: 1, name: "注册信息", url: "index.aspx", target: "MyIframe"  },
        {id: 12, pId: 1, name: "内心独白" },
        {id: 13, pId: 1, name: "详细资料" },

        {id: 2, pId: 0, name: "我的活动" },

        {id: 3, pId: 0, name: "我的相册" },

        {id: 4, pId: 0, name: "系统设置" },
        {id: 41, pId: 4, name: "修改密码" },
        {id: 42, pId: 4, name: "婚恋状态" },
        {id: 43, pId: 4, name: "手机验证" }
    ];

    function addDiyDom(treeId, treeNode) {
        var spaceWidth = 5;
        var switchObj = $("#" + treeNode.tId + "_switch"),
            icoObj = $("#" + treeNode.tId + "_ico");
        switchObj.remove();
        icoObj.before(switchObj);

        if (treeNode.level > 1) {
            var spaceStr = "<span style='display: inline-block;width:" + (spaceWidth * treeNode.level) + "px'></span>";
            switchObj.before(spaceStr);
        }
    }

    function beforeClick(treeId, treeNode) {
        if (treeNode.level == 0) {
            var zTree = $.fn.zTree.getZTreeObj("treeDemo");
            zTree.expandNode(treeNode);
            return false;
        }
        return true;
    }

    $(document).ready(function () {
        var treeObj = $("#treeDemo");
        $.fn.zTree.init(treeObj, setting, zNodes);
        zTree_Menu = $.fn.zTree.getZTreeObj("treeDemo");
        curMenu = zTree_Menu.getNodes()[0].children[0].children[0];
        zTree_Menu.selectNode(curMenu);

        treeObj.hover(function () {
            if (!treeObj.hasClass("showIcon")) {
        treeObj.addClass("showIcon");
    }
        }, function () {
        treeObj.removeClass("showIcon");
    });
    });
	
