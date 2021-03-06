<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <div class="jumbotron text-center">
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
                    <a class="navbar-brand" href="BankApplication.html">Logo</a>
                    <ul class="navbar-nav">
                      <li class="nav-item">
                        <a class="nav-link" href="Create_account.html">New Account</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="withdraw.html">Withdraw</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="Deposit.html">Deposit</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="transfer.html">Fund Transfer</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="checkbalance.html">Check Balance</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="accountdetails.html">Account Details</a>
                      </li>
                      <li class="nav-item"><a class="nav-link" href="delete.html">Delete
						Account</a></li>
                    </ul>
                  </nav>
                  <br> 
                  </div>
<div class="container">
  <h2>Create New Account</h2>
  <form action="/BankAppSpringWebMVC/app/bankapp/new" method="post">
    <div class="form-group">
        <label for="Name">Name:</label>
        <input type="text" class="form-control" placeholder="Enter name" name="name1" required>
      </div>
      <!--
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
    </div>
    <div class="form-group">
      <label for="pwd">Phone Number:</label>
      <input class="form-control" id="inputPhone" pattern = "[1-9]{1}[0-9]{9}" placeholder="Enter 10 digit phone number" maxlength=
      "10" name="phone" required="required" size="10" title="" type="tel"
      value="" required>
  </div>
  <div class="form-group">
    <label for="DOB">Date of Birth:</label>
    <input type="date" class="form-control" id="DOB" placeholder="DD/MM/YYYY" name="DOB" required>
  </div>
  <div class="form-group">
    <label for="Address">Address:</label>
    <input type="text" class="form-control" id="Address"  name="Address" required>
  </div>
  <div class="form-group">
    <label for="City">City:</label>
    <select>
      <option value="Mumbai">Mumbai</option>
      <option value="Pune">Pune</option>
      <option value="Chennai">Chennai</option>
      <option value="Audi">Bangalore</option>
    </select>
  </div>
  <div class="form-group">
    <label for="State">State:</label>
    <select>
      <option value="Maharashtra">Maharashtra</option>
      <option value="Karnataka">Karnataka</option>
      <option value="Tamil Nadu">Tamil Nadu</option>
    </select>
  </div>
  <div class="form-group">
    <label for="Postal">Postal Code:</label>
    <input type="text" class="form-control" id="Postal"  name="Postal" required>
  </div>
  <div class="form-group">
    <label for="State">Gender:</label>
    <div class="radio">
      <label><input type="radio" name="optradio" checked>Male</label>
    </div>
    <div class="radio">
      <label><input type="radio" name="optradio">Female</label>
    </div>
  </div>
  -->
  
  <div class="form-group">
    <label for="Account">Account type:</label>
    <select name= account_type>
      <option value="">--select--</option>
      <option value="SAVING">Savings</option>
      <option value="CURRENT">Current</option>
    </select>
  </div>
  
  <div class="form-group">
    <label for="balance">Balance:</label>
    <input class="form-control" id="accountBalance" placeholder="Enter initial account balance"
    name="account_balance" required="required" title="" value="" required>
</div>

    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</body>
</html>
