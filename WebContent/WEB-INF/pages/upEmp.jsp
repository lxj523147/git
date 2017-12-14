<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<title>修改员工</title>
<link rel="stylesheet"
	href="<%=path%>/res/bootstrap-2.3/css/bootstrap.css" type="text/css" />
<script type="text/javascript" src="<%=path%>/res/jquery-Validate/jquery.js"></script>
</head>
<body>
<div style="margin-left:400px;"><h2>修改员工信息</h2></div>
	<div class="container">
		<div class="row">
			<div class="span12">


				<form class="form-horizontal" action="update" method="post"
					id="signupForm">

					<input type="hidden" id="eid" name="eid" value="${emp.eid}" />

					<div class="control-group">
						<label class="control-label" for="ename">员工姓名 </label>
						<div class="controls">
							<input type="text" id="ename" name="ename" value="${emp.ename}" />
						</div>
					</div>


					<div class="control-group">
						<label class="control-label" for="deptid">部门</label>
						<div class="controls">
							<select name="deptid">
								<c:if test="${deptlist!=null}">
									<c:forEach items="${deptlist}" var="dept">
										<c:choose>
											<c:when test="${emp.deptid==dept.did}">
												<option value="${dept.did}" selected="selected">${dept.dname}</option>
											</c:when>
											<c:otherwise>
												<option value="${dept.did}">${dept.dname}</option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</c:if>
							</select>
						</div>
					</div>


					<div class="control-group">
						<label class="control-label" for="age">年龄 </label>
						<div class="controls">
							<input type="text" id="age" name="age" value="${emp.age}">
						</div>
					</div>


					<div class="control-group">
						<label class="control-label" for="gender">性别</label>
						<div class="controls">
							<c:if test="${emp.gender=='男'}">
								<input type="radio" name="gender" value="男" checked="checked" />男
								<input type="radio" name="gender" value="女" /> 女
							</c:if>
							<c:if test="${emp.gender=='女' }">
								<input type="radio" name="gender" value="男" />男
								<input type="radio" name="gender" value="女" checked="checked" /> 女
							</c:if>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="workDate">日期 </label>
						<div class="controls">						
							<input type="text" id="workDate" name="workDate" value='<fmt:formatDate value="${emp.workDate }"  pattern="yyyy-MM-dd" />'>
						</div>
					</div>




					<div class="control-group">
						<div class="controls">
							<input type="submit" value="修改" class="btn" /> <input
								type="reset" value="重置" />

						</div>
					</div>


				</form>

			</div>
		</div>
	</div>

</body>
</html>