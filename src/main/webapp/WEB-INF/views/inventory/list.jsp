<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8" />
<c:import url="../meta.jsp"></c:import>
<title><c:out value="${location.name}" />倉庫一覧</title>
</head>
<body>
	<div class="container-fluid">
		<c:import url="../header.jsp">
			<c:param name="loginId" value="${loginId}"></c:param>
		</c:import>
		<div class="d-flex justify-content-around">
			<h2 class="h2 col-sm-5">
				<c:out value="${location.name}" />
				番倉庫
			</h2>
			<p class="col-sm-4 text-muted">倉庫の合計金額：<small class="small">￥</small><c:out value="${thisInventoryTotalPrice}"/></p>
			<div class="col-sm-2">
				<div class="d-flex justify-content-sm-end">
					<p class="col-sm-6">
						<a class="btn btn-primary"
							href='<spring:url value="/inventory/add"></spring:url>'>追加</a>
					</p>
					<p class="col-sm-6">
						<a class="btn btn-secondary"
							href='<spring:url value="/inventory/index"></spring:url>'>戻る</a>
					</p>
				</div>
			</div>
		</div>
		<div class="row justify-content-center">
			<c:choose>
				<c:when test="${empty inventories}">
					<p class="row justify-content-center text-danger">倉庫に何もありません</p>
				</c:when>
				<c:otherwise>
					<table class="table table-border table-striped">
						<thead>
							<tr>
								<th>編集</th>
								<th>削除</th>
								<th>品名</th>
								<th>在庫数</th>
								<th>1ロット</th>
								<th>単価</th>
								<th>合計金額</th>
								<th>修正日</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="inventory"
								items="${inventories}" varStatus="loop">
								<tr>
									<td><a class="btn btn-secondary"
										href="/input/inventory/edit/<c:out value="${inventory.id }"/>">移動/編集</a></td>
									<td><a class="btn btn-danger"
										href="/input/inventory/delete/<c:out value="${inventory.id }"/>">削除</a></td>
									<td id="part-name"><c:out value="${inventory.part.name }" /></td>
									<td id="amount"><c:out
											value="${inventory.amount}" /></td>
									<td id="lot"><c:out value="${inventory.part.lot}" /></td>
									<td id="price" ><c:out
											value="${inventory.part.price}" /></td>
									<td id="total-price-<c:out value="${inventory.id}"/>"><c:out value="${totalPrices[loop.index]}"/></td>
									<td><c:out value="${inventory.updated }" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
</html>