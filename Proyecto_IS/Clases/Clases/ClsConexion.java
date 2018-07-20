/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author l8
 */
public class ClsConexion {

    private Statement St;
    private String driver;
    private String user;
    private String pwd;
    private String cadena;
    private Connection con;

    public String getDriver() {
        return this.driver;
    }

    String getUser() {
        return this.user;
    }

    String getPwd() {
        return this.pwd;
    }

    String getCadena() {
        return this.cadena;
    }

    public Connection getConexion() {
        return this.con;
    }

    public ClsConexion() {

//       this.driver = "org.postgresql.Driver";
//        this.user = "postgres";
//        this.pwd = "1234";
//        this.cadena = "jdbc:postgresql://localhost:5432/BaseProy3";
//        this.con = this.crearConexion();


        this.driver = "com.mysql.jdbc.Driver";
        this.user = "root";
        this.pwd = "";
        this.cadena = "jdbc:mysql://localhost:3306/baseproy1";
        this.con = this.crearConexion();
        
        
//        
//        
//        this.driver = "com.mysql.jdbc.Driver";
//        this.user = "migue5tu_basepro";
//        this.pwd = "W~K6HISp#ZyX";
//        this.cadena = "jdbc:mysql://mysql3000.mochahost.com:3306/migue5tu_BaseProyecto";
//        this.con = this.crearConexion();
    }

    Connection crearConexion() {
        try {
            //Class.forName("org.postgresql.Driver");
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {

        }

        try {
            Class.forName(getDriver()).newInstance();
            Connection con = DriverManager.getConnection(getCadena(), getUser(), getPwd());
            System.out.println("conexion establecida");
            return con;
        } catch (Exception ee) {
            System.out.println("Error: " + ee.getMessage());
            return null;
        }
    }

    public String Ejecutar(String sql) {
        String error = "";
        try {
            St = getConexion().createStatement();
            St.execute(sql);
            error = "Datos insertados";
        } catch (Exception ex) {
            error = ex.getMessage();
        }
        return (error);
    }

    public ResultSet Consultar(String sql) {
        String error = "";
        ResultSet reg = null;

        try {
            St = getConexion().createStatement();
            reg = St.executeQuery(sql);

        } catch (Exception ee) {
            error = ee.getMessage();
        }
        return (reg);
    }

}
