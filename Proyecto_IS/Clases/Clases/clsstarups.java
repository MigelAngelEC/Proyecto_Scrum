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

    public boolean InsertarStart(String Nombre, String Descripcion) {
        boolean ejecuto = false;
        int max = 0;
        ClsConexion con = new ClsConexion();
        try {
            ResultSet rs = con.Consultar("Select Max(cod_startup) from startups");
            while (rs.next()) {
                max = rs.getInt(1);
            }
            max = max + 1;
            String SQL = ("insert into startups values(" + max + ",'" + Nombre + "','" + Descripcion + "');");
            con.Ejecutar(SQL);
            ejecuto = true;
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
            con.Ejecutar(SQL);
            ejecuto = true;
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
            ResultSet rs = con.Consultar("SELECT usuarios.cod_startup FROM public.usuarios where usuarios.nickname='" + nickname + "'");
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
            ResultSet rs = con.Consultar("SELECT usuarios.nombres, usuarios.apellidos, usuarios.email, usuarios.tel_celular,usuarios.cedula,usuarios.cod_startup FROM public.usuarios;");
            while (rs.next()) {
                SQLAdded += "<tr><td>" + rs.getString(1) + " " + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td>"
                        + "<form action=StartUpProAdd.jsp>"
                        + "<input type=text name=cedula value='" + rs.getString(5).trim() + "'hidden=true >"
                        + "<input type=text name=codstart value='" + this.MyStartUP(nickname) + "'hidden=true >"
                        + "<input type=text name=nickn value='" + nickname + "'hidden=true >";
                if (rs.getInt(6) == 0) {
                    SQLAdded += "<td>  <button type=submit class=list-group-item>Aplicar </button></td></form></tr>";
                } else {
                    SQLAdded += "<td>  <button title=\"Usuario registrado en StartUP, impsible registrarse en más de una\" type=submit class=btn btn-link disabled=true>Aplicar </button></td></form></tr>";

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
            con.Ejecutar(SQL);
            ejecuto = true;
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
            ejecuto = false;
        }
        return ejecuto;
    }

}
