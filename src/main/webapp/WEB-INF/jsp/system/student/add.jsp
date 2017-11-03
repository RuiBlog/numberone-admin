<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/common.jspf" %>
<script type="text/javascript" src="${ctx}/js/system/student/add.js">
</script>
<style type="text/css">
.col-sm-3 {
	width: 15%;
	float: left;
}

.col-sm-9 {
	width: 85%;
	float: left;
}
label[class^="btn btn-default"]{
	margin-top: -4px;
}
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post" action="${ctx}/student/addEntity.shtml">
		<section class="panel panel-default">
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-3 control-label">姓名</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc" placeholder="请输入姓名" name="studentFormMap.name" id="name">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">年龄</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc" placeholder="请输入年龄" name="studentFormMap.age" id="roleKey">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">性别</label>
				<div class="col-sm-9">
					<label class="btn btn-sm btn-default active"><input type="radio" name="studentFormMap.sex" id="male" value="M"> 男</label>
					<label class="btn btn-sm btn-default"> <input type="radio"  name="studentFormMap.sex" id="female" value="F"> 女</label>
				</div>
			</div>
			<%--<div class="line line-dashed line-lg pull-in"></div>--%>
			<%--<div class="form-group">--%>
				<%--<label class="col-sm-3 control-label">角色状态</label>--%>
				<%--<div class="col-sm-9">--%>
					<%--<div class="btn-group m-r">--%>
						<%--<button data-toggle="dropdown"--%>
							<%--class="btn btn-sm btn-default dropdown-toggle">--%>
							<%--<span class="dropdown-label">是</span> <span class="caret"></span>--%>
						<%--</button>--%>
						<%--<ul class="dropdown-menu dropdown-select">--%>
							<%--<li class=""><a href="#"><input type="radio"--%>
									<%--name="roleFormMap.state" value="0" checked="checked">是</a></li>--%>
							<%--<li class="active"><a href="#"><input type="radio"--%>
									<%--name="roleFormMap.state" value="1">否</a></li>--%>
						<%--</ul>--%>
					<%--</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="line line-dashed line-lg pull-in"></div>--%>
		</div>
		<footer class="panel-footer text-right bg-light lter">
			<button type="submit" class="btn btn-success btn-s-xs">提交</button>
		</footer> 
		</section>
	</form>
</body>
</html>