<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h2>Account Info</h2>
		<form action="/BankAppSpringWebMVC/app/bankapp/update" method="post">

			<div class="form-group">
				<label for="AccNo">Account No:</label> <input type="text"
					class="form-control" id="AccNo" name="AccNo" value="${accountDetails.accountId}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="Name">Name:</label> <input type="text"
					class="form-control" placeholder="Enter name" name="name1" value="${accountDetails.accountHolderName}">
			</div>
			<div class="form-group">
				<label for="Account">Account type:</label> <select name=account_type>
					<option value="${accountDetails.accountBalance}"></option>
					<option value="SAVING">Savings</option>
					<option value="CURRENT">Current</option>
				</select>
			</div>
			<div class="form-group">
				<label for="balance">Balance:</label> <input class="form-control"
					id="accountBalance" name="account_balance" value="${accountDetails.accountBalance}"
					readonly="readonly">
			</div>



			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>

</body>
</html>