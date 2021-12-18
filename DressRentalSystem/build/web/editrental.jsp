<%-- 
    Document   : editrental
    Created on : 18 Dec 2021, 2:10:57 am
    Author     : yazmi
--%>

<%@page import="com.crud.dressrental.Rental"%>
<%@page import="com.crud.dressrental.RentalDAO"%>
<%@page import="com.crud.dressrental.ConnectionDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>

<% 
    int id = Integer.parseInt(request.getParameter("id"));
    RentalDAO rentdao = new RentalDAO(ConnectionDAO.getConn());
    Rental rent = rentdao.getOneRental(id);
    request.setAttribute("editRental", rent);
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ" crossorigin="anonymous"></script>
        
        <style>
            .inner{
                position: relative;
                margin: 0 auto;
                width: 650px;
                display: block;
                padding: 50px 0;
            }
            h3{
                text-align: center;
                border-bottom: 2px solid midnightblue;
                margin-bottom: 20px;
            }
            
        </style>
        <title>Edit Rental Details</title>
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
        
        <div class="inner">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2>Edit Rental Details</h2>
                        <form action="EditRentalServlet" method="post">
                            <div class="form-group">
                                <input class="form-control" type="hidden" name="id" value="${editRental.id}">
                            </div>
                            <br>
                            <div class="form-group">
                                <label>Representative Name:</label>
                                <input class="form-control" name="repname" value="${editRental.repname}" required >
                            </div>
                            <br>
                            <div class="form-group">
                                <label>Phone Number:</label>
                                <input class="form-control" name="phonenumber" value="${editRental.phonenumber}" required >
                            </div>
                            <br>
                            <div class="form-group">
                                <label>Dress Code:</label>
                                <input class="form-control" name="dresscode" value="${editRental.dresscode}" required >
                            </div>
                            <br>
                            <div class="form-group">
                                <label>Reservation Date:</label>
                                <input class="form-control" name="reservationdate" value="${editRental.reservationdate}" required >
                            </div>
                            <br>
                            <div class="form-group">
                                <label>Payment Method:</label>
                                <select id="inputPaymentMethod" class="form-control" name="paymentmethod" required>
                                    <option value="${editRental.paymentmethod}">Previous Selection</option>
                                    <option value="Debit/Credit Card">Debit/Credit Card</option>
                                    <option value="Online Banking">Online Banking</option>
                                    <option value="Cash">Cash</option>
                                </select>
                            </div>
                            <br>       
                            <div class="form-group">
                                <label>Payment Status:</label>
                                <select id="InputPaymentStatus" class="form-control" name="paymentstatus" required>
                                    <option value="${editRental.paymentstatus}">Previous Selection</option>
                                    <option value="Deposit Only">Deposit Only</option>
                                    <option value="Completed">Completed</option>
                                </select>
                            </div>
                            <br>
                            <div class="form-group">
                                <label>Customer ID:</label>
                                <input class="form-control" name="custid" value="${editRental.custid}" required >
                            </div>
                            <br>
                            <button type="submit" class="btn btn-success">Submit</button>
                            <button type="button" class="btn btn-danger" onclick="location.href='<%=request.getContextPath()%>/rentaldatabase.jsp';">Cancel</a></button>
                        </form>
                    </div>
                </div>
                
            </div>
            
        </div>
        
    </body>
</html>
