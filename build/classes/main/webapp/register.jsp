<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Register</title>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<style>
	body {
		display: flex;
		min-height: 100vh;
		justify-content: center;
		align-items: center;

	}

	.container {
		width: 70%;
	}
</style>

<body>



	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">


	<div class="container">





		<div class="card bg-light">
			<div class="card-body mx-auto" style="max-width: 500px;">
				<h4 class="card-title mt-3 text-center">Create Account</h4>

				<form id="form" action="register" method="POST">
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-user"></i> </span>
						</div>
						<input name="username" id="username" class="form-control" placeholder="Full name" type="text">
					</div> <!-- form-group// -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
						</div>
						<input name="email" id="email" class="form-control" placeholder="Email address" type="email">
					</div> <!-- form-group// -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-phone"></i> </span>
						</div>
						<select class="custom-select" style="max-width: 100px;">
							<option selected="">+91</option>

						</select>
						<input name="phone" id="phone" class="form-control" placeholder="Phone number" type="text">
					</div> <!-- form-group// -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-building"></i> </span>
						</div>
						<input name="job" id="job" class="form-control" placeholder="Job Title" type="text">
					</div> <!-- form-group end.// -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-lock"></i> </span>
						</div>
						<input class="form-control" name="password" id="password" placeholder="Create password" type="password">
					</div> <!-- form-group// -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-lock"></i> </span>
						</div>
						<input class="form-control" id="password2" placeholder="Repeat password" type="password">
					</div> <!-- form-group// -->
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-block" onclick="return onValidate()"> Create
							Account </button>
					</div> <!-- form-group// -->
					<p class="text-center">Have an account? <a href="login.jsp">Log In</a> </p>
				</form>
			</div>
		</div>

	</div>


	</article>
</body>
<script>
	function onValidate() {

		const form = document.getElementById('form');
		const username = document.getElementById('username');
		const email = document.getElementById('email');
		const password = document.getElementById('password');
		const password2 = document.getElementById('password2');
		const phone = document.getElementById('phone');
		const job = document.getElementById('job');

		if (checkRequired([username, job, phone, email, password, password2]) &&
			checkLength(phone, 10, 10) &&
			checkEmail(email) &&
			checkPassword(password, password2)) {
			return true;
		} else {
			return false;
		}



	
	}


	//Check required fields
	function checkRequired(inputArr) {
		inputArr.forEach(function (input) {
			if (input.value.trim() === '') {
				showError(input, `${input.id.charAt(0).toUpperCase() + input.id.slice(1)} is required`);
			} else {
				showSuccess(input);
			}
		});
		return true;
	}

	//validate email regex
	function checkEmail(email) {

		const re =
			/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		if (re.test(String(email.value.trim()).toLowerCase())) {
			showSuccess(email);
			return true;
		} else {
			showError(email, 'Email is not valid');
			return false;
		}

	}

	//check pass match
	function checkPassMatch(input1, input2) {
		if (input1.value !== input2.value) {
			showError(input2, 'Passwords do not match');
			return false;
		} else {
			showSuccess(input2);
			return true;
		}
	}

	//check required checkLength
	function checkLength(input, min, max) {
		if (input.value.length < min) {
			showError(input, `${input.id.charAt(0).toUpperCase() + input.id.slice(1)} must be at least ${min} characters`);
			return false;
		} else if (input.value.length > max) {
			showError(input,
			`${input.id.charAt(0).toUpperCase() + input.id.slice(1)} must be less than ${max} characters`);
			return false;
		} else {
			showSuccess(input);
			return true;

		}
	}

	function showError(input, message) {
		input.style.borderColor = '#f44336';


	}

	function showSuccess(input) {
		input.style.borderColor = '#28a745';

	}
</script>

</html>