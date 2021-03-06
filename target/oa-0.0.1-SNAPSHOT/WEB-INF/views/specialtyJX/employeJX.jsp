<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="staticCtx" value="${pageContext.request.contextPath}/static" />
<html>
<head>
<title>专业绩效页面</title>
<!-- artDialog -->
<script type="text/javascript"
	src="${staticCtx}/artdialog/artDialog.js?skin=brief"></script>
<script type="text/javascript"
	src="${staticCtx}/artdialog/plugins/iframeTools.js"></script>

<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2">
				<ul class="nav nav-tabs nav-stacked">
					<li class="nav-header"><h4>${employeJX.departmentName }专业评价</h4></li>
					<c:forEach items="${pe.getContent()}" var="pc">
						<li><a
							href="${ctx }/specialtyJX/employeJX?date=<fmt:formatDate value="${pc.createTime}" pattern="yyyy-MM"/>">${pc.peDateDepartment.replace('_','') }</a></li>
					</c:forEach>
				</ul>
			</div>
			<div class="span10">
				<h3><fmt:formatDate value="${date}" pattern="yyyy-MM"/>${employeJX.beEvaluatedName}专业性评价</h3>
				<table class="table  table-striped table-bordered table-condensed">
					<tr>
						<td>序号</td>
						<td>专业性</td>
						<td>得分</td>
						<td>评价人</td>
					</tr>
					<c:forEach var="specialtyJX" items="${employeJX.specialtyJXList }"
						varStatus="status">
						<tr align="center">
							<td>${status.index+1 }</td>
							<td>${specialtyJX.specialtyName }</td>
							<td>${specialtyJX.score }</td>
							<td>${specialtyJX.evaluateName}</td>
						</tr>
					</c:forEach>
				</table>
				评语：${employeJX.comment} <br /> 总分：${employeJX.totalScore }分
			</div>
		</div>
	</div>
</body>
</html>
