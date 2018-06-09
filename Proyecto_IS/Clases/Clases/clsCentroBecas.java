/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author EstIvonneGeovannaCam
 */
public class clsCentroBecas {
    
  int cod_b;
String cod_perfil, nombre_cb,direccion, telefonos,email,password;

    public int getCod_b() {
        return cod_b;
    }

    public void setCod_b(int cod_b) {
        this.cod_b = cod_b;
    }

    public String getCod_perfil() {
        return cod_perfil;
    }

    public void setCod_perfil(String cod_perfil) {
        this.cod_perfil = cod_perfil;
    }

    public String getNombre_cb() {
        return nombre_cb;
    }

    public void setNombre_cb(String nombre_cb) {
        this.nombre_cb = nombre_cb;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefonos() {
        return telefonos;
    }

    public void setTelefonos(String telefonos) {
        this.telefonos = telefonos;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

     public static String autenticacion_cb(String correo, String pass){
       String log_cb="false";
       ClsConexion con=new ClsConexion();
       ResultSet rs=null;
       String sql_CB="SELECT cod_cb FROM centros__becas WHERE email='"+correo+"' AND password='"+pass+"'";
  
       try {
            rs=con.Consultar(sql_CB);
            while(rs.next()){
                log_cb="true";
                System.out.println("ruc"+rs.getString(0));
                
         }
        } catch (SQLException e) {
        }
        System.out.println(log_cb);
        return log_cb;
        
       

    }
    
}
