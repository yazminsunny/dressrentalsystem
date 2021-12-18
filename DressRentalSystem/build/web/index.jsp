<%-- 
    Document   : index
    Created on : 15 Dec 2021, 5:23:15 pm
    Author     : yazmi
--%>

<%@page import="java.util.List"%>
<%@page import="com.crud.dressrental.Customer"%>
<%@page import="com.crud.dressrental.CustomerDAO"%>
<%@page import="com.crud.dressrental.ConnectionDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>

<% 
    CustomerDAO customerData = new CustomerDAO(ConnectionDAO.getConn()); 
    List<Customer> customer = customerData.getAllCustomers();
    request.setAttribute("CUSTOMER_LIST",customer);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ" crossorigin="anonymous"></script>
        <title>Customer Details</title>
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
                                <a class="nav-link active" aria-current="page" href="index.jsp">Customer Details</a>
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
                        <h3>Enter Customer Details</h3>
                        <form action="InsertCustomerServlet" method="post">
                            <div class="form-group">
                                <label>Title:</label>
                                <input class="form-control" name="title" placeholder="Ms./Mrs./Mrs" required >
                            </div>
                            <br>
                            <div class="form-group">
                                <label>Full Name:</label>
                                <input class="form-control" name="custname" required >
                            </div>
                            <br>
                            <div class="form-group">
                                <label>Email:</label>
                                <input class="form-control" name="custemail" placeholder="customer123@gmail.com" required >
                            </div>
                            <br>
                            <div class="form-group">
                                <label>Contact Number:</label>
                                <input class="form-control" name="contactnumber" required >
                            </div>
                            <br>
                            <div class="form-group">
                                <label>Date of Birth</label>
                                <input class="form-control" name="dob" placeholder="dd/mm/YYYY" required >
                            </div>
                            <br>
                            <div class="form-group">
                                <label>Country:</label>
                                <select id="inputState" class="form-control" name="country" required>
                                    <option selected disabled>Choose Country</option>
                                    <option value="Malaysia">Malaysia</option>
                                    <option value="Indonesia">Indonesia</option>
                                    <option value="Russia">Russia</option>
                                    <option value="Others">Others</option>
                                </select>
                            </div>
                            <br>
                            <button type="submit" class="btn btn-success">Submit</button>
                            <button type="reset" class="btn btn-primary">Reset</button>
                             
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
