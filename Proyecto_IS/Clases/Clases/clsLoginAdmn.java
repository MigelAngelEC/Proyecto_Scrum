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
public class clsLoginAdmn {
    
    String cod_adm, nickname, password;

    public String getCod_adm() {
        return cod_adm;
    }

    public void setCod_adm(String cod_adm) {
        this.cod_adm = cod_adm;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public static String autenticacion_adm(String nick, String pass){
       String log_adm="false";
       ClsConexion con=new ClsConexion();
       ResultSet rs=null;
       String sql_Administrador="SELECT cod_adm,cod_perfil FROM administradores WHERE nickname='"+nick+"' AND password='"+pass+"'";
        try {
            rs=con.Consultar(sql_Administrador);
            while(rs.next()){
                log_adm="true";
                System.out.println("ci"+rs.getString(0)+"perfil"+rs.getString(1));
                
         }
        } catch (SQLException e) {
        }
        System.out.println(log_adm);
        return log_adm;
        
       

    }
    
    
}
