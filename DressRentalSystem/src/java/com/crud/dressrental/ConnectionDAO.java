/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.crud.dressrental;

import java.sql.*;

/**
 *
 * @author yazmi
 */
public class ConnectionDAO {
    private static Connection con;
    
    public static Connection getConn() throws SQLException {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chandlersdressco","root","Mamiabah_7173");
        } catch (Exception e){
            e.printStackTrace();
        }
        return con;
    }
    
}
