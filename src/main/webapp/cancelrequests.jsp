<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="web.*, java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pending Requests</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>

<div class="container-fluid">
        <div class="col-md-8">
            <div class="row">
            <center>
                <table class="table table-responsive" >
                    <thead class="thead-dark">
                      <tr>
                        <th scope="col">S.No.</th>
                        <th scope="col">Vessel No.</th>
                        <th scope="col">Vessel Name</th>
                        <th scope="col">Owner Phone</th>
                        <th scope="col">Agency Email</th>
                        <th scope="col">Agent Phone</th>
                        <th scope="col">From</th>
                        <th scope="col">To</th>
                        <th scope="col">Departure Date</th>
                        <th scope="col">Departure Time</th>
                        <th scope="col">Arrival Date</th>
                        <th scope="col">Arrival Time</th>
                        <th scope="col">Port</th>
                        <th scope="col">Status</th>
                      </tr>
                    </thead>
                    <tbody>
                    <% 
					ArrayList<CancelBerth> list = user_database_operations.readCancelData();
					for(CancelBerth book: list){
				        out.print("<tr>");
				          out.print("<th scope='row'>1</th>");
				          out.print("<td>"+book.getVesselNo()+"</td>");
				          out.print("<td>"+book.getVesselName()+"</td>");
				          out.print("<td>"+book.getOwnerPhone()+"</td>");
				          out.print("<td>"+book.getAgencyEmail()+"</td>");
				          out.print("<td>"+book.getAgentPhone()+"</td>");
				          out.print("<td>"+book.getFrom()+"</td>");
				          out.print("<td>"+book.getTo()+"</td>");
				          out.print("<td>"+book.getDeptDate()+"</td>");
				          out.print("<td>"+book.getDeptTime()+"</td>");
				          out.print("<td>"+book.getArrivDate()+"</td>");
				          out.print("<td>"+book.getArrivTime()+"</td>");
				          out.print("<td>"+book.getPort()+"</td>");
				          out.print("<td>"+book.getStatus()+"</td>");
				        out.print("</tr>");
					}
				%>
						</tbody>
                  </table>
                  
            </div>
        </div>
    </div>




<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>