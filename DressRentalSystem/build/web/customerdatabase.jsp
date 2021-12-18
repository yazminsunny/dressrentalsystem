<%-- 
    Document   : customerdatabase
    Created on : 15 Dec 2021, 11:59:39 pm
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
        <title>Customer Database</title>
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
                        <h3>Customer Database</h3>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Title</th>
                                    <th scope="col">Full Name</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Contact Number</th>
                                    <th scope="col">Date of Birth</th>
                                    <th scope="col">Country</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="tempCustomer" items="${CUSTOMER_LIST}">
                                    <tr>
                                        <td>${tempCustomer.id}</td>
                                        <td>${tempCustomer.title}</td>
                                        <td>${tempCustomer.custname}</td>
                                        <td>${tempCustomer.custemail}</td>
                                        <td>${tempCustomer.contactnumber}</td>
                                        <td>${tempCustomer.dob}</td>
                                        <td>${tempCustomer.country}</td>
                                        <td><a href="editcustomer.jsp?id=${tempCustomer.id }">Edit</a> 
                                            <a href="DeleteCustomersServlet?id=${tempCustomer.id}">Delete</a></td>
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
