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
 * @author rowel
 */
public class clsstarups {

    public clsstarups(String Cod_Start, String Nombre, String Descripcion) {
        this.Cod_Start = Cod_Start;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
    }

    public clsstarups() {

    }

    public String getCod_Start() {
        return Cod_Start;
    }

    public void setCod_Start(String Cod_Start) {
        this.Cod_Start = Cod_Start;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
    private String Cod_Start;
    private String Nombre;
    private String Descripcion;

    public boolean InsertarStart(String Nombre, String Descripcion, String nickname) {
        boolean ejecuto = false;
        int max = 0;
        String maxed = "";
        ClsConexion con = new ClsConexion();
        try {
            ResultSet rs = con.Consultar("Select Max(cod_startup) from startups");
            while (rs.next()) {
                maxed = rs.getString(1);

            }

            if (maxed.isEmpty() || maxed == null) {
                max = 1;
                String SQL = ("insert into startups (COD_STARTUP,NOMBRES,DESCRIPCIONS) values(" + max + ",'" + Nombre + "','" + Descripcion + "');");
                String SQL1 = ("UPDATE usuarios SET COD_STARTUP=" + max + " WHERE NICKNAME='" + nickname + "';");
                String eject = con.Ejecutar(SQL);
                String eject1 = con.Ejecutar(SQL1);
                if (eject.equalsIgnoreCase("Datos Insertados") || eject1.equalsIgnoreCase("Datos Insertados")) {
                    ejecuto = true;
                } else {
                    ejecuto = false;
                }
            } else {
                max = Integer.parseInt(maxed) + 1;
                String SQL = ("insert into startups (COD_STARTUP,NOMBRES,DESCRIPCIONS) values(" + max + ",'" + Nombre + "','" + Descripcion + "');");
                String SQL1 = ("UPDATE usuarios SET COD_STARTUP=" + max + " WHERE NICKNAME='" + nickname + "';");
                String eject = con.Ejecutar(SQL);
                String eject1 = con.Ejecutar(SQL1);
                if (eject.equalsIgnoreCase("Datos Insertados") || eject1.equalsIgnoreCase("Datos Insertados")) {
                    ejecuto = true;
                } else {
                    ejecuto = false;
                }
            }

        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
            ejecuto = false;
        }
        return ejecuto;
    }

    public boolean UpdateStart(String cod, String Nombre, String Descripcion) {
        boolean ejecuto = false;
        ClsConexion con = new ClsConexion();
        try {
            String SQL = ("update startups set nombres ='" + Nombre + "', descripcions='" + Descripcion + "' where cod_startup='" + cod + "'");
            String eject = con.Ejecutar(SQL);
            if (eject.equalsIgnoreCase("Datos Insertados")) {
                ejecuto = true;
            } else {
                ejecuto = false;
            }
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
            ejecuto = false;
        }
        return ejecuto;
    }

    public Integer MyStartUP(String nickname) {
        int start = 0;
        try {
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar("SELECT cod_startup FROM usuarios where nickname='" + nickname + "'");
            while (rs.next()) {
                start = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }
        return start;
    }

    public Integer MaxStartUp() {
        int max = 0;
        try {
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar("select Max(cod_startup) from startups ");
            while (rs.next()) {
                max = rs.getInt(1);
            }
            max = max + 1;
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }
        return max;
    }

    public String UsersStartUp(String nickname) {
        String SQLAdded = " <table class=table table-hover> <tr><th> Nombre del Usuario</th><th>Em@il</th><th>Telefono Celular</th><th> Aplicar ¿?</th></tr>";
        try {
            clsUsuario us = new clsUsuario();
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar("SELECT nombres, apellidos, email, tel_celular,cedula,cod_startup FROM .usuarios;");
            while (rs.next()) {
                SQLAdded += "<tr><td>" + rs.getString(1) + " " + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td>"
                        + "<form action=StartUpProAdd.jsp>"
                        + "<input type=text name=cedula value='" + rs.getString(5).trim() + "'hidden=true >"
                        + "<input type=text name=codstart value='" + this.MyStartUP(nickname) + "'hidden=true >"
                        + "<input type=text name=nickn value='" + nickname + "'hidden=true >";
                if (rs.getInt(6) == 0) {
                    SQLAdded += "<td>  <button type=submit class=list-group-item>Agergar </button></td></form></tr>";
                } else {
                    SQLAdded += "<td>  <button title=\"Usuario registrado en StartUP, imposible registrarse en más de una\" type=submit class=btn btn-link disabled=true>Agregar </button></td></form></tr>";

                }

//                        + "<td>  <button type=submit class=list-group-item>Aplicar </button></td></form></tr>";
            }
        } catch (SQLException e) {
            System.out.println("Error" + e.getMessage());
        }
        SQLAdded += "</table>";
        return SQLAdded;
    }

    public Boolean UpdateUserStartUp(String cedula, String cod) {
        boolean ejecuto = false;
        ClsConexion con = new ClsConexion();
        try {
            String SQL = ("update usuarios set cod_startup=" + cod + " where cedula='" + cedula + "'");
            String eject = con.Ejecutar(SQL);
            if (eject.equalsIgnoreCase("Datos Insertados")) {
                ejecuto = true;
            } else {
                ejecuto = false;
            }
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
            ejecuto = false;
        }
        return ejecuto;
    }

}
