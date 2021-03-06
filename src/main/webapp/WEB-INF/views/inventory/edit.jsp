<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<c:import url="../meta.jsp"></c:import>
<title>在庫編集</title>
</head>
<body>
	<div class="container-fluid">
		<c:import url="../header.jsp"></c:import>
		<div class="row">
			<h1 class="h3 col-sm-12 text-muted">
				<c:out value="${inventory.part.name}" />
			</h1>
		</div>
		<c:import url="form.jsp">
			<c:param name="inventory" value="${inventory}"></c:param>
			<c:param name="partsLocations" value="${partsLocations }"></c:param>
			<c:param name="submit" value="${submit}"></c:param>
		</c:import>
	</div>
</body>
</html>