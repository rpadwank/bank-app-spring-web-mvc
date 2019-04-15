<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Account List</h3>

	<table border="1">
		<thead>
			<tr>
				<th>Account Id</th>
				<th>Name</th>
				<th>Type</th>
				<th>Balance</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${accountsList}" var="account">
				<tr>
					<td>${account.accountId}</td>
					<td>${account.accountHolderName}</td>
					<td>${account.accountType}</td>
					<td>${account.accountBalance}</td>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>