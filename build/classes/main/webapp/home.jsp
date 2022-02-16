<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>EasyBook</title>

    <style>
        body {
            margin: 0 auto;
        }

        .heading {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: black;
            color: white;
        }

        .components {

            display: flex;
            flex-direction: row;
        }

        .card img {
            max-width: 100%;
            height: 40%;

        }

        .card {
            width: 20%;
            height: 20%;
            background-color: white;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            border-radius: 10px;
            cursor: pointer;
			margin: 0 auto;
        	float: none;
        	margin-top: 75px;
        	margin-bottom: 10px;

        }

        .card:hover {
            transform: scale(1.05);
        }

        .container {
            
            text-align: center;

        }
    </style>


</head>

<body>
    <div class="heading">
        <h1>
            Easy<b>Book</b>
        </h1>

    </div>
    <div class="components">


        <div class="card" onclick="location.href='bookberth.jsp'">
            <div><img
                    src="https://icon-library.com/images/booking-icon-png/booking-icon-png-21.jpg"
                    alt="5 Terre" style="width:100%"></div>
            <div class="container">
                <p><b>Book Berth</b></p>
            </div>
        </div>


        <div class="card" onclick="location.href='cancelberth.jsp'">
            <div><img src="https://cdn-icons-png.flaticon.com/512/1/1585.png"
                    alt="5 Terre" style="width:100%"></div>
            <div class="container">
                <p><b>Cancel Berth</b></p>
            </div>
        </div>

        <div class="card" onclick="location.href='dashboard.jsp'">
            <div><img src="https://cdn0.iconfinder.com/data/icons/octicons/1024/dashboard-512.png"
                    alt="5 Terre" style="width:100%"></div>
            <div class="container">
                <p><b>Dashboard</b></p>
            </div>
        </div>
    </div>

</body>

</html>