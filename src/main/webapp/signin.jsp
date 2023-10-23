<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%! String message="";%>
<% if(request.getAttribute("msg")!=null){
	message=request.getAttribute("msg").toString();
	}%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Connecter-vous</title>
		<!-- Bootstrap core CSS -->
		<link href="https://getbootstrap.com/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet">
		<style>
		.bd-placeholder-img {
		font-size: 1.125rem;
		text-anchor: middle;
		-webkit-user-select: none;
		-moz-user-select: none;
		user-select: none;
		}
		@media (min-width: 768px) {
		.bd-placeholder-img-lg {
		font-size: 3.5rem;
		}
		}
		</style>
		<!-- Custom styles for this template -->
		<link href="assets/signin.css" rel="stylesheet">
	</head>
	<body class="text-center">
		<main class="form-signin">
			<form action="Signin" method="post">
				<img class="mb-4" src="assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
				<h1 class="h3 mb-3 fw-normal">Please sign in</h1>
				<div class="form-floating">
					<input type="email" name="log" class="form-control" placeholder="name@example.com">
					<label for="floatingInput">Email address</label>
				</div>
				<div class="form-floating">
					<input type="password" name="pass" class="form-control" placeholder="Password">
					<label for="floatingPassword">Password</label>
				</div>
			   <div class="checkbox mb-3">
					<label>
						<input type="checkbox" value="remember-me"> Remember me
					</label>
			   </div>
		   <button class="w-100 btn btn-lg btn-primary" type="submit" value="connect">Sign in</button>
		   
		 </form>
		</main>
	</body>
</html>