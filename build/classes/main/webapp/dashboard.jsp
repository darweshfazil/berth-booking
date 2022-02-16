<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Dashboard</title>

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
            justify-content: center;
        }

     

        .card {
            width: 18%;
            height: 100%;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            border-radius: 10px;
            cursor: pointer;
            margin:30px 20px;
            margin-bottom:10px;
            margin-top:30px;
		}
		.card--red {
			background-image: linear-gradient(#FF0400, #FFFFB7);
        }
        .card--blue {
			background-image: linear-gradient(#03254C, #D0EFFF);
        }
        .card--green {
			background-image: linear-gradient(#4D7902, #ACF49C);
        }
        .card--yellow {
			background-image: linear-gradient(#FFCC00, #FFF192);
        }
        h2{
        	font-size:100px;
        }
        .card div h2{
            text-align: center;
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
            Welcome, Admin
        </h1>

    </div>
    <div class="components">


        <div class="card card--blue" onclick="location.href='newrequests.jsp'">
            <div><h2 style="color:white">3</h2></div>
            <div class="container">
                <p><b>Verify Requests</b></p>
            </div>
        </div>


        <div class="card card--yellow"  onclick="location.href='cancelrequests.jsp'">
            <div><h2 style="color:white">3</h2></div>
            <div class="container">
                <p><b>Cancel Requests</b></p>
            </div>
        </div>

        <div class="card card--green"  onclick="location.href='approvedrequests.jsp'">
            <div><h2  style="color:white">1</h2></div>
            <div class="container">
                <p><b>Approved Requests</b></p>
            </div>
        </div>

        <div class="card card--red"   onclick="location.href='rejectedrequests.jsp'">
            <div><h2 style="color:white">2</h2></div>
            <div class="container">
                <p><b>Rejected Requests</b></p>
            </div>
        </div>
        
    </div>
    

</body>

</html>