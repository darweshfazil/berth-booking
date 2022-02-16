<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
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
        width: 60%;
    }

    .form-check {

        margin-bottom: 5px;
    }

    form {
        padding: 10px;
    }
</style>

<body>
    <div class="container">
        <div class="card bg-light">
            <article class="card-body mx-auto" style="max-width: 400px;">
                <h4 class="card-title mt-3 text-center">Login</h4>

                <form action="login" method="POST">

                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                        </div>
                        <input name="email" id="email" class="form-control" placeholder="Email address" type="email">
                    </div>



                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                        </div>
                        <input name="password" id="password" class="form-control" placeholder="Create password" type="password">
                    </div>

                    <div class="form-check">
                        <input type="checkbox" class="form-check-input filled-in" id="new3">
                        <label class="form-check-label " for="new3">Admin</label>
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-block">Log in </button>
                    </div>
                    <p class="text-center">Don't have an account? <a href="register.jsp">Create here!</a> </p>
                </form>
            </article>
        </div>

    </div>
</body>

</html>