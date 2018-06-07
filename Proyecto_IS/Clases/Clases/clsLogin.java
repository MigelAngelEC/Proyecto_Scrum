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
public class clsLogin {
    public String cedula;
    public String nickname;
    public String cod_perfil;
    public String password;

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getCod_perfil() {
        return cod_perfil;
    }

    public void setCod_perfil(String cod_perfil) {
        this.cod_perfil = cod_perfil;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    public static String autenticacion(String nick, String pass){
       String log="false";
       ClsConexion con=new ClsConexion();
       ResultSet rs=null;
       String sql_Usuario="SELECT cedula,cod_perfil FROM usuarios WHERE nickname='"+nick+"' AND password='"+pass+"'";
        try {
            rs=con.Consultar(sql_Usuario);
            while(rs.next()){
                log="true";
                System.out.println("ci"+rs.getString(0)+"perfil"+rs.getString(1));
                
         }
        } catch (SQLException e) {
        }
        System.out.println(log);
        return log;
        
       

    }
    
}
