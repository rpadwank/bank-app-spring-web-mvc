<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<div class="jumbotron text-center">
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
			<a class="navbar-brand" href="BankApplication.html">Logo</a>
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link"
					href="Create_account.html">New Account</a></li>
				<li class="nav-item"><a class="nav-link" href="withdraw.html">Withdraw</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="Deposit.html">Deposit</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="transfer.html">Fund
						Transfer</a></li>
				<li class="nav-item"><a class="nav-link"
					href="checkbalance.html">Check Balance</a></li>
				<li class="nav-item"><a class="nav-link"
					href="accountdetails.html">Account Details</a></li>
				<li class="nav-item"><a class="nav-link" href="delete.html">Delete
						Account</a></li>
			</ul>
		</nav>
		<br>
	</div>
	<div class="container">
		<h2>Account</h2>
		<form action="/BankAppSpringWebMVC/app/bankapp/searchAccount" method="post">
			<div class="form-group">
				<label for="AccNo">Account No:</label> <input type="text"
					class="form-control" id="AccNo" name="AccNo">
			</div>
			
				<button type="submit" class="btn btn-primary">Submit</button>
			

		</form>
	</div>

</body>
</html>
