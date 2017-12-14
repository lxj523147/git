<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加员工</title>
<link rel="stylesheet"
	href="<%=path%>/res/bootstrap-2.3/css/bootstrap.css" type="text/css" />
<script type="text/javascript" src="<%=path%>/res/jquery-Validate/jquery.js"></script>
</head>
<body>
	<div class="container">
		<div class="row" style="padding-left:200px"><h3>添加员工信息</h3></div>
		<div class="row">
			<div class="span12">

				<form class="form-horizontal" action="addEmp" method="post">

					<div class="control-group">
						<label class="control-label" for="ename">员工姓名</label>
						<div class="controls">
							<input type="text" id="ename" name="ename" placeholder="学生姓名"
								required />
						</div>
					</div>


					<div class="control-group">
						<label class="control-label" for="deptid"> 部门</label>
						<div class="controls">
							<select id="deptid" name="deptid" >
								<option value="">请选择</option>
								<c:if test="${deptlist!=null}">
									<c:forEach items="${deptlist}" var="dept">
										<option value="${dept.did}">${dept.dname}</option>
									</c:forEach>
								</c:if>

							</select>
						</div>
					</div>


					<div class="control-group">
						<label class="control-label" for="age">年龄 </label>
						<div class="controls">
							<input type="text" id="age" name="age" placeholder="年龄" required/>
						</div>
					</div>


					<div class="control-group">
						<label class="control-label" for="gender">性别</label>
						<div class="controls">
							<input type="radio" name="gender" value="男" checked="checked" />男
							<input type="radio" name="gender" value="女" />女
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="workDate">入职时间</label>
						<div class="controls">
							<input type="text" id="workDate" name="workDate"  placeholder="入职时间" required/>
						</div>
					</div>

					<div class="control-group">
						<div class="controls">
							<input type="submit" value="添加" class="btn" /> <input
								type="reset" value="重置" />
						</div>
					</div>


				</form>

			</div>
		</div>
	</div>


</body>
</html>