/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.crud.dressrental;

/**
 *
 * @author yazmi
 */
public class Rental {
    int id;
    String repname;
    String phonenumber;
    String dresscode;
    String reservationdate;
    String paymentmethod;
    String paymentstatus;
    String custid;

    public Rental() {
    }

    public Rental(int id, String repname, String phonenumber, String dresscode, String reservationdate, String paymentmethod, String paymentstatus, String custid) {
        this.id = id;
        this.repname = repname;
        this.phonenumber = phonenumber;
        this.dresscode = dresscode;
        this.reservationdate = reservationdate;
        this.paymentmethod = paymentmethod;
        this.paymentstatus = paymentstatus;
        this.custid = custid;
    }

    public Rental(String repname, String phonenumber, String dresscode, String reservationdate, String paymentmethod, String paymentstatus, String custid) {
        this.repname = repname;
        this.phonenumber = phonenumber;
        this.dresscode = dresscode;
        this.reservationdate = reservationdate;
        this.paymentmethod = paymentmethod;
        this.paymentstatus = paymentstatus;
        this.custid = custid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRepname() {
        return repname;
    }

    public void setRepname(String repname) {
        this.repname = repname;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getDresscode() {
        return dresscode;
    }

    public void setDresscode(String dresscode) {
        this.dresscode = dresscode;
    }

    public String getReservationdate() {
        return reservationdate;
    }

    public void setReservationdate(String reservationdate) {
        this.reservationdate = reservationdate;
    }

    public String getPaymentmethod() {
        return paymentmethod;
    }

    public void setPaymentmethod(String paymentmethod) {
        this.paymentmethod = paymentmethod;
    }

    public String getPaymentstatus() {
        return paymentstatus;
    }

    public void setPaymentstatus(String paymentstatus) {
        this.paymentstatus = paymentstatus;
    }

    public String getCustid() {
        return custid;
    }

    public void setCustid(String custid) {
        this.custid = custid;
    }

    @Override
    public String toString() {
        return "Rental{" + "id=" + id + ", repname=" + repname + ", phonenumber=" + phonenumber + ", dresscode=" + dresscode + ", reservationdate=" + reservationdate + ", paymentmethod=" + paymentmethod + ", paymentstatus=" + paymentstatus + ", custid=" + custid + '}';
    }
    
    


    
    
    
    
    
    
}


