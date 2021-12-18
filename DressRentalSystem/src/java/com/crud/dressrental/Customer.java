/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.crud.dressrental;

/**
 *
 * @author yazmi
 */
public class Customer {
    int id;
    String title;
    String custname;
    String custemail;
    String contactnumber;
    String dob;
    String country;

    public Customer() {
    }

    public Customer(int id, String title, String custname, String custemail, String contactnumber, String dob, String country) {
        this.id = id;
        this.title = title;
        this.custname = custname;
        this.custemail = custemail;
        this.contactnumber = contactnumber;
        this.dob = dob;
        this.country = country;
    }

    public Customer(String title, String custname, String custemail, String contactnumber, String dob, String country) {
        this.title = title;
        this.custname = custname;
        this.custemail = custemail;
        this.contactnumber = contactnumber;
        this.dob = dob;
        this.country = country;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCustname() {
        return custname;
    }

    public void setCustname(String custname) {
        this.custname = custname;
    }

    public String getCustemail() {
        return custemail;
    }

    public void setCustemail(String custemail) {
        this.custemail = custemail;
    }

    public String getContactnumber() {
        return contactnumber;
    }

    public void setContactnumber(String contactnumber) {
        this.contactnumber = contactnumber;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @Override
    public String toString() {
        return "Customer{" + "id=" + id + ", title=" + title + ", custname=" + custname + ", custemail=" + custemail + ", contactnumber=" + contactnumber + ", dob=" + dob + ", country=" + country + '}';
    }
    
    
    
    
}
