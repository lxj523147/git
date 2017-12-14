<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>列表页面</title>
<link rel="stylesheet"
	href="<%=path%>/res/bootstrap-2.3/css/bootstrap.css" type="text/css" />
	<script type="text/javascript" src="<%=path%>/res/js/jquery-1.8.3.js"></script>
	
	<script type="text/javascript">
		$(function(){
			//隔行变色
			$("tr[name='emp']:odd").css("backgroundColor","#ffff66");
			
		});
		function del(eid){
			if(confirm("确定要删除此用户吗？")){
				location.href="delete/"+eid;
			}
		}
	</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="span12">

				<form action="" class="form-horizontal" method="post">
					<table class="table table-bordered" >
					    <tr>
							<td><a href="add">添加员工</a></td>
						</tr>
						<tr>
							<th>员工姓名</th>
							<th>部门</th>
							<th>年龄</th>
							<th>性别</th>
							<th>入职时间</th>
							<th>操作</th>
						</tr>
						<c:if test="${emplist!=null}">
							<c:forEach var="emp" items="${emplist}">
								<tr name="emp">
									<td>${emp.ename}</td>
									<td>${emp.dname}</td>
									<td>${emp.age}</td>
									<td>${emp.gender}</td>
									<%-- <td>${emp.workDate}</td> --%>
									<td><fmt:formatDate value="${emp.workDate }"  pattern="yyyy-MM-dd" /></td>
									<td><a href="upEmpById/${emp.eid}">修改</a>/<a href="javascript:void(0)" onclick="del('${emp.eid}');">删除</a></td>
								</tr>
							</c:forEach>
						</c:if>
					</table>
				</form>

			</div>
		</div>
	</div>
</body>
</html>