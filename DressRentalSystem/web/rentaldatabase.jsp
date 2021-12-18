<%-- 
    Document   : rentaldatabase
    Created on : 17 Dec 2021, 2:28:40 am
    Author     : yazmi
--%>

<%@page import="java.util.List"%>
<%@page import="com.crud.dressrental.Rental"%>
<%@page import="com.crud.dressrental.RentalDAO"%>
<%@page import="com.crud.dressrental.ConnectionDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
    RentalDAO rentalData = new RentalDAO(ConnectionDAO.getConn());
    List<Rental> rental = rentalData.getAllRental();
    request.setAttribute("RENTAL_LIST", rental);
%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ" crossorigin="anonymous"></script>
        
        <title>Rental Database</title>
    </head>
    <body>
        <div class="container-fluid">
            
            <!-- NAVIGATION BAR -->
            <nav class="navbar navbar-expand-lg navbar-light bg-warning">
                <div class="container-fluid">
                     <a class="navbar-brand" href="#">DRESS RENTAL SYSTEM: CHANDLERSDRESS.CO RENTAL</a>
                     <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                     </button>
                     <div class="collapse navbar-collapse" id="navbarNavDropdown">
                         <ul class="navbar-nav">
                             <li class="nav-item">
                                <a class="nav-link" href="index.jsp">Customer Details</a>
                             </li>
                             <li class="nav-item">
                                <a class="nav-link" href="dressrentaldetails.jsp">Rent Dress Details</a>
                             </li>
                             <li class="nav-item dropdown">
                                 
                                 <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                  Database
                                 </a>
                                 <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <li><a class="dropdown-item" href="customerdatabase.jsp">Customer</a></li>
                                    <li><a class="dropdown-item" href="rentaldatabase.jsp">Dress Rental</a></li>
                                 </ul>
                             </li>
                         </ul>
                     </div>
                </div>
            </nav>  
        </div>
        <br>
        <br>
        
        <div class="container">
            <div class="inner">
                <div class="row">
                    <div class="col-md-9">
                        <h3>Rental Database</h3>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Representative Name</th>
                                    <th scope="col">Phone Number</th>
                                    <th scope="col">Dress Code</th>
                                    <th scope="col">Reservation Date</th>
                                    <th scope="col">Payment Method</th>
                                    <th scope="col">Payment Status</th>
                                    <th scope="col">Customer ID</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="tempRental" items="${RENTAL_LIST}">
                                    
                                    <tr>
                                        <td>${tempRental.id}</td>
                                        <td>${tempRental.repname}</td>
                                        <td>${tempRental.phonenumber}</td>
                                        <td>${tempRental.dresscode}</td>
                                        <td>${tempRental.reservationdate}</td>
                                        <td>${tempRental.paymentmethod}</td>
                                        <td>${tempRental.paymentstatus}</td>
                                        <td>${tempRental.custid}</td>
                                        <td><a href="editrental.jsp?id=${tempRental.id}">Edit</a> 
                                            <a href="DeleteRentalServlet?id=${tempRental.id}">Delete</a></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                            
                        </table>
                        
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
