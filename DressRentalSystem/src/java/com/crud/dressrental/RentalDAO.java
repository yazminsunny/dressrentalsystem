/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.crud.dressrental;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author yazmi
 */
public class RentalDAO {
    Connection conn;

    public RentalDAO(Connection conn) {
        this.conn = conn;
    }
    
    // insert rental details to database
    
    public boolean insertRentalDetails(Rental rental){
        boolean test = false;
        
        String query = "INSERT INTO rental (repname, phonenumber, dresscode, reservationdate, paymentmethod, paymentstatus, custid) VALUES (?, ?, ?, ?, ?, ?, ?);";
        
        try{
            PreparedStatement pt = this.conn.prepareStatement(query);
            pt.setString(1, rental.getRepname());
            pt.setString(2, rental.getPhonenumber());
            pt.setString(3, rental.getDresscode());
            pt.setString(4, rental.getReservationdate());
            pt.setString(5, rental.getPaymentmethod());
            pt.setString(6, rental.getPaymentstatus());
            pt.setString(7, rental.getCustid());
            
            
            pt.executeUpdate();
            
            test=true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return test;
        
    }
    
    public List<Rental> getAllRental(){
        List<Rental> rental = new ArrayList<>();
        
        try{
            
            String query = "select * from rental";
            PreparedStatement pt = this.conn.prepareStatement(query);           
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String repname = rs.getString("repname");
                String phonenumber = rs.getString("phonenumber");
                String dresscode = rs.getString("dresscode");
                String reservationdate = rs.getString("reservationdate");
                String paymentmethod = rs.getString("paymentmethod");
                String paymentstatus = rs.getString("paymentstatus");
                String custid = rs.getString("custid");
                
                Rental row = new Rental(id, repname, phonenumber, dresscode, reservationdate, paymentmethod, paymentstatus, custid);
                rental.add(row);
                
                
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return rental;
        
    }
    
    public Rental getOneRental(int id){
        
        Rental rent = null;
        
        try{
            String query = "select * from rental where id=?";
            PreparedStatement pt = this.conn.prepareStatement(query);
            pt.setInt(1, id);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int rid = rs.getInt("id");
                String rrepname = rs.getString("repname");
                String rphonenumber = rs.getString("phonenumber");
                String rdresscode = rs.getString("dresscode");
                String rreservationdate = rs.getString("reservationdate");
                String rpaymentmethod = rs.getString("paymentmethod");
                String rpaymentstatus = rs.getString("paymentstatus");
                String rcustid = rs.getString("custid");
                
                rent = new Rental(rid,rrepname,rphonenumber,rdresscode,rreservationdate,rpaymentmethod,rpaymentstatus,rcustid);
            }
            
            
            
        }catch (Exception e){
            e.printStackTrace();
        }
        return rent;
    }
    
    public boolean updateRentalDetails(Rental rental){
        boolean test = false;
        
        String query = "UPDATE rental SET repname=?, phonenumber=?, dresscode=?, reservationdate=?, paymentmethod=?, paymentstatus=?, custid=? WHERE id=?";
        
        try{
            
            PreparedStatement pat = this.conn.prepareStatement(query);
            
            pat.setString(1, rental.getRepname());
            pat.setString(2, rental.getPhonenumber());
            pat.setString(3, rental.getDresscode());
            pat.setString(4, rental.getReservationdate());
            pat.setString(5, rental.getPaymentmethod());
            pat.setString(6, rental.getPaymentstatus());
            pat.setString(7, rental.getCustid());
            pat.setInt(8, rental.getId());
 
            pat.executeUpdate();
            
            test = true;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return test; 
    }
    
    public void deleteRental(int id){
        
        try{
            String query = "delete from rental where id=?";
            PreparedStatement pt = this.conn.prepareStatement(query);
            pt.setInt(1, id);
            pt.execute();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
    }
    
    
}
