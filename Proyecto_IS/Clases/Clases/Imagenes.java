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
public class Imagenes {
    
   String cod,emp,path;

    public String getCod() {
        return cod;
    }

    public void setCod(String cod) {
        this.cod = cod;
    }

    public String getEmp() {
        return emp;
    }

    public void setEmp(String emp) {
        this.emp = emp;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }
   
   public static String consultaPath(String emp){
       String directorio="";
       ClsConexion con=new ClsConexion();
       ResultSet rs=null;
       String sql_Administrador="SELECT path FROM empresas WHERE emp='"+emp+"'";
        try {
            rs=con.Consultar(sql_Administrador);
            while(rs.next()){
                System.out.println("directorio"+rs.getString(0));
                
         }
        } catch (SQLException e) {
        }
        System.out.println(directorio);
        return directorio;
        
       

    }
   
    
}
