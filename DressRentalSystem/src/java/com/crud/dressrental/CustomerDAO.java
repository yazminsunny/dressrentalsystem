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
public class CustomerDAO {
    Connection con;

    public CustomerDAO(Connection con) {
        this.con = con;
    }
    
    
    //insert to database
    
    public boolean insertCustomer(Customer customer) {
        boolean test = false;
        String query = "INSERT INTO customer (title, custname, custemail, contactnumber, dob, country) VALUES (?, ?, ?, ?, ?, ?);";
        try{
            PreparedStatement pat = this.con.prepareStatement(query);
            pat.setString(1,customer.getTitle());
            pat.setString(2,customer.getCustname());
            pat.setString(3,customer.getCustemail());
            pat.setString(4,customer.getContactnumber());
            pat.setString(5,customer.getDob());
            pat.setString(6,customer.getCountry());
            
            pat.executeUpdate();
            test = true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return test;
    }
    
    public List<Customer> getAllCustomers(){
        List<Customer> customer = new ArrayList<>();
        
        try{
            String query = "select * from customer";
            PreparedStatement pt = this.con.prepareStatement(query);
            
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String title = rs.getString("title");
                String custname = rs.getString("custname");
                String custemail = rs.getString("custemail");
                String contactnumber = rs.getString("contactnumber");
                String dob = rs.getString("dob");
                String country = rs.getString("country");
                
                Customer row = new Customer(id, title, custname, custemail, contactnumber, dob, country);
                customer.add(row);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return customer;
    }
    
    //select specific customer
    
    public Customer getCustomer(int id){
        Customer customer= null;
        try{
            String query = "select * from customer where id =?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setInt(1, id);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int cid = rs.getInt("id");
                String ctitle = rs.getString("title");
                String ccustname = rs.getString("custname");
                String ccustemail = rs.getString("custemail");
                String ccontactnumber = rs.getString("contactnumber");
                String cdob = rs.getString("dob");
                String ccountry = rs.getString("country");
                
                customer = new Customer(cid,ctitle,ccustname,ccustemail,ccontactnumber,cdob,ccountry);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return customer;
    }
    
    //update customer details
    public boolean updateCustomerDetails(Customer customer){
        boolean test = false;
        
        String query = "UPDATE customer SET title=?, custname=?, custemail=?, contactnumber=?, dob=?, country=? WHERE id=?";
        
        try{
            
            PreparedStatement pat = this.con.prepareStatement(query);
            
            pat.setString(1,customer.getTitle());
            pat.setString(2,customer.getCustname());
            pat.setString(3,customer.getCustemail());
            pat.setString(4,customer.getContactnumber());
            pat.setString(5,customer.getDob());
            pat.setString(6,customer.getCountry());
            pat.setInt(7, customer.getId());
 
            pat.executeUpdate();
            
            test = true;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return test;
        
      
    }
    
    //delete customer
    
    public void deleteCustomer(int id){
        
        try{
            String query = "delete from customer where id=?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setInt(1, id);
            pt.execute();
            
        }catch(Exception e){
            e.printStackTrace();
        }
    }
   
    
    
}
