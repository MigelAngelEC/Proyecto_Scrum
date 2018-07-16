/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author migue
 */
public class clsInfoAcademica {

    private String Institución;
    private String titulo;
    private String nivel;
    private String especialidad;

    /**
     * @return the Institución
     */
    public String getInstitución() {
        return Institución;
    }

    /**
     * @param Institución the Institución to set
     */
    public void setInstitución(String Institución) {
        this.Institución = Institución;
    }

    /**
     * @return the titulo
     */
    public String getTitulo() {
        return titulo;
    }

    /**
     * @param titulo the titulo to set
     */
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    /**
     * @return the nivel
     */
    public String getNivel() {
        return nivel;
    }

    /**
     * @param nivel the nivel to set
     */
    public void setNivel(String nivel) {
        this.nivel = nivel;
    }

    /**
     * @return the especialidad
     */
    public String getEspecialidad() {
        return especialidad;
    }

    /**
     * @param especialidad the especialidad to set
     */
    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    public List<String> ConsultarDatosAcaInsti(String nick) {
        List<String> lista = new ArrayList<String>(10);
        try {
            String SQL1 = ("SELECT ic.INSTITUCION FROM infomacion_academica as ic,usuarios as sus WHERE  sus.CEDULA=(select cedula from usuarios as users where users.NICKNAME='" + nick + "') and ic.COD_NE=1 and sus.CEDULA = ic.CEDULA;");
            ClsConexion con = new ClsConexion();
            ResultSet rs1 = con.Consultar(SQL1);
            while (rs1.next()) {
                lista.add("Primaria:" + rs1.getString(1));
            }
            String SQL2 = ("SELECT ic.INSTITUCION FROM infomacion_academica as ic,usuarios as sus WHERE  sus.CEDULA=(select cedula from usuarios as users where users.NICKNAME='" + nick + "') and ic.COD_NE=2 and sus.CEDULA = ic.CEDULA;");

            ResultSet rs2 = con.Consultar(SQL2);
            while (rs2.next()) {
                lista.add("Secundaria:" + rs2.getString(1));
            }
            String SQL3 = ("SELECT ic.INSTITUCION FROM infomacion_academica as ic,usuarios as sus WHERE  sus.CEDULA=(select cedula from usuarios as users where users.NICKNAME='" + nick + "') and ic.COD_NE=3 and sus.CEDULA = ic.CEDULA;");

            ResultSet rs3 = con.Consultar(SQL3);
            while (rs3.next()) {
                lista.add("Tercer Nivel:" + rs3.getString(1));
            }
            String SQL4 = ("SELECT ic.INSTITUCION FROM infomacion_academica as ic,usuarios as sus WHERE  sus.CEDULA=(select cedula from usuarios as users where users.NICKNAME='" + nick + "') and ic.COD_NE=4 and sus.CEDULA = ic.CEDULA;");

            ResultSet rs4 = con.Consultar(SQL4);
            while (rs4.next()) {
                lista.add("Doctorado" + rs4.getString(1));
            }
            String SQL5 = ("SELECT ic.INSTITUCION FROM infomacion_academica as ic,usuarios as sus WHERE  sus.CEDULA=(select cedula from usuarios as users where users.NICKNAME='" + nick + "') and ic.COD_NE=5 and sus.CEDULA = ic.CEDULA;");

            ResultSet rs5 = con.Consultar(SQL5);
            while (rs5.next()) {
                lista.add("PostGrado:" + rs5.getString(1));
            }
            String SQL6 = ("SELECT ic.INSTITUCION FROM infomacion_academica as ic,usuarios as sus WHERE  sus.CEDULA=(select cedula from usuarios as users where users.NICKNAME='" + nick + "') and ic.COD_NE=6 and sus.CEDULA = ic.CEDULA;");

            ResultSet rs6 = con.Consultar(SQL6);
            while (rs6.next()) {
                lista.add("Curso:" + rs6.getString(1));
            }
            String SQL7 = ("SELECT ic.INSTITUCION FROM infomacion_academica as ic,usuarios as sus WHERE  sus.CEDULA=(select cedula from usuarios as users where users.NICKNAME='" + nick + "') and ic.COD_NE=7 and sus.CEDULA = ic.CEDULA;");

            ResultSet rs7 = con.Consultar(SQL7);
            while (rs7.next()) {
                lista.add("Masterado:" + rs7.getString(1));
            }
        } catch (SQLException e) {
        }
        return lista;
    }

    public List<String> ConsultarDatosAcaEspecilidades(String nick) {
        List<String> lista = new ArrayList<String>(10);
        try {
            String SQL1 = ("SELECT espe.especialidad FROM preferencias as pref,especialidad as espe, usuarios as users WHERE users.cedula=(Select cedula from usuarios where nickname='" + nick + "')AND pref.cedula = users.cedula AND espe.cod_especialidad = pref.cod_especialidad;");
            ClsConexion con = new ClsConexion();
            ResultSet rs1 = con.Consultar(SQL1);
            while (rs1.next()) {
                lista.add(rs1.getString(1));
            }
        } catch (SQLException e) {
        }
        return lista;
    }

     public static String mostrarComboPerfiles() {
        String combo = "<div class=\"input-group mb-2 mr-sm-2 mb-sm-0\">\n<div class=\"input-group-addon\">Nivel</div> <select class=\"form-control\" id=\"exampleFormControlSelect1\" name=ComboPer>";
        String sql = "Select * from nivel_educativo ;";
        ResultSet rs = null;
        ClsConexion con = new ClsConexion();
        try {
            rs = con.Consultar(sql);
            while (rs.next()) {
                combo += "<option value=" + rs.getInt(1) + ">" + rs.getString(2) + "</option>";
            }
            combo += "</select></div>";
        } catch (SQLException e) {
            System.out.println(e.getMessage());

        }

        return combo;
    }

    public Boolean InsertarInforAc(String nick, String insti, String titulo, int level, String espe) {
        boolean ejecuto = false;
        int max = 0;
        String ci = "";
        try {
            String SQL = "Select cedula from usuarios where nickname='" + nick + "';";
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar(SQL);
            while (rs.next()) {
                ci = rs.getString(1);
            }
            System.out.println(ci);
            String SQL1 = ("insert into infomacion_academica (CEDULA,COD_NE,INSTITUCION,TITULO) values ('" + ci + "','" + level + "','" + insti + "','" + titulo + "');");
            con.Ejecutar(SQL1);
            String SQL2 = "Select MAX(cod_especialidad) from especialidad;";
            ResultSet rs2 = con.Consultar(SQL2);
            while (rs2.next()) {
                max = rs2.getInt(1);
            }
            max = max + 1;
            System.out.println(max);
            String SQL3 = "insert into especialidad (COD_ESPECIALIDAD,ESPECIALIDAD)values ('" + max + "','" + espe + "');";
            con.Ejecutar(SQL3);
            String SQL4 = "insert into preferencias (COD_ESPECIALIDAD,CEDULA) values ('" + max + "','" + ci + "');";
             String eject = con.Ejecutar(SQL4);
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
