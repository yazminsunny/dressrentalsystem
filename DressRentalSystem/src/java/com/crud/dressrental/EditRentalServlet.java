/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.crud.dressrental;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yazmi
 */
public class EditRentalServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditRentalServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            String repname = request.getParameter("repname");
            String phonenumber = request.getParameter("phonenumber");
            String dresscode = request.getParameter("dresscode");
            String reservationdate = request.getParameter("reservationdate");
            String paymentmethod = request.getParameter("paymentmethod");
            String paymentstatus = request.getParameter("paymentstatus");
            String custid = request.getParameter("custid");
            int id = Integer.parseInt(request.getParameter("id"));
            
            Rental rental = new Rental();
            
            rental.setRepname(repname);
            rental.setPhonenumber(phonenumber);
            rental.setDresscode(dresscode);
            rental.setReservationdate(reservationdate);
            rental.setPaymentmethod(paymentmethod);
            rental.setPaymentstatus(paymentstatus);
            rental.setCustid(custid);
            rental.setId(id);
            
            
            try{
                RentalDAO  rdao = new RentalDAO(ConnectionDAO.getConn());
                boolean success = rdao.updateRentalDetails(rental);
                
                
            
                if (!success){
                    out.print("Error occured. Please refresh the page and try again.");
                }else{
                    response.sendRedirect("rentaldatabase.jsp");
                    
                }
            }catch (Exception e){
                e.printStackTrace();
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
