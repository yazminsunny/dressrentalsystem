<%-- 
    Document   : dressrentaldetails
    Created on : 17 Dec 2021, 2:27:41 am
    Author     : yazmi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ" crossorigin="anonymous"></script>
        
        
        <title>Dress Rental Details</title>
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
                                <a class="nav-link"  href="index.jsp">Customer Details</a>
                             </li>
                             <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="dressrentaldetails.jsp">Rent Dress Details</a>
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
            <a href="DressCodeDisplay.jsp" target="_blank">VIEW DRESS CODE HERE></a>
        </div>
        
        <br>
        <br>
        
        <div class="container">
            <div class="inner">
                <div class="row">
                    <div class="col-md-9">
                        <h3>Enter Rental Details</h3>
                        <form action="InsertRentalServlet" method="post">
                            <div class="form-group">
                                <label>Customer Name(Representative):</label>
                                <input class="form-control" name="repname" required >
                            </div>
                            <br>
                            <div class="form-group">
                                <label>Phone Number:</label>
                                <input class="form-control" name="phonenumber" required >
                            </div>
                            <br>
                            <div class="form-group">
                                <label>Dress Code (Press the button above to view codes)</label>
                                <input class="form-control" name="dresscode" required >
                            </div>
                            <br>
                            <div class="form-group">
                                <label>Dress Reservation Date:</label>
                                <input class="form-control" name="reservationdate" placeholder="dd/mm/YYYY" required >
                            </div>
                            <br>
                            <div class="form-group">
                                <label>Payment Method:</label>
                                <select id="inputPaymentMethod" class="form-control" name="paymentmethod" required>
                                    <option selected disabled>Choose Method</option>
                                    <option value="Debit/Credit Card">Debit/Credit Card</option>
                                    <option value="Online Banking">Online Banking</option>
                                    <option value="Cash">Cash</option>
                                </select>
                            </div>
                            <br>
                            <div class="form-group">
                                <label>Payment Status:</label>
                                <select id="InputPaymentStatus" class="form-control" name="paymentstatus" required>
                                    <option selected disabled>Choose Status</option>
                                    <option value="Deposit Only">Deposit Only</option>
                                    <option value="Completed">Completed</option>
                                </select>
                            </div>
                            <br>
                            
                            <div class="form-group">
                                <label>Customer ID:</label>
                                <input class="form-control" name="custid" placeholder="1/2/3/4" required >
                                <br>
                                <button type="button" class="btn btn-primary" onclick="location.href='<%=request.getContextPath()%>/customerdatabase.jsp';">View Customer ID Here</button>
                            </div>
                            <br>
                            <button type="submit" class="btn btn-success">Submit</button>
                            <button type="reset" class="btn btn-primary">Reset</button>
                             
                        </form>
                    </div>
        
        
        
    </body>
</html>
