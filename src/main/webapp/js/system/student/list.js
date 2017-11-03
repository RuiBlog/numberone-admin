var pageii = null;
var grid = null;
$(function() {
	grid = lyGrid({
		id : 'paging',
		l_column : [ {
			colkey : "id",
			name : "id",
			width : "50px"
		}, {
			colkey : "name",
			name : "姓名"
		}, {
			colkey : "age",
			name : "年龄"
		}, {
			colkey : "sex",
			name : "性别"
		}],
		jsonUrl : rootPath + '/student/findByPage.shtml',
		checkbox : true
	});
    $("#addstu").click("click", function() {
        addStudent();
    });
    $("#delStu").click("click", function() {
        delStudent();
    });
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
});
function addStudent() {
	pageii = layer.open({
		title : "新增",
		type : 2,
		area : [ "600px", "40%" ],
		content : rootPath + '/student/addUI.shtml'
	});
}
function delStudent() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/student/deleteEntity.shtml';
		var s = CommnUtil.ajax(url, {
			ids : cbox.join(",")
		}, "json");
		if (s == "success") {
			layer.msg('删除成功');
			grid.loadData();
		} else {
			layer.msg('删除失败');
		}
	});
}
