/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.ResultSet;

/**
 *
 * @author EstIvonneGeovannaCam
 */
public class clsOfertaBecas {
    int cod_cb;
    String cod_beca, descripcion_beca, fecha_inicio, fecha_fin, horario;

    public int getCod_cb() {
        return cod_cb;
    }

    public void setCod_cb(int cod_cb) {
        this.cod_cb = cod_cb;
    }

    public String getCod_beca() {
        return cod_beca;
    }

    public void setCod_beca(String cod_beca) {
        this.cod_beca = cod_beca;
    }

    public String getDescripcion_beca() {
        return descripcion_beca;
    }

    public void setDescripcion_beca(String descripcion_beca) {
        this.descripcion_beca = descripcion_beca;
    }

    public String getFecha_inicio() {
        return fecha_inicio;
    }

    public void setFecha_inicio(String fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }

    public String getFecha_fin() {
        return fecha_fin;
    }

    public void setFecha_fin(String fecha_fin) {
        this.fecha_fin = fecha_fin;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }
    
    public String OfertasXCB(String codigoCB) {
        String becas=null; 
        ClsConexion con = new ClsConexion();
        String SQL1 = ("SELECT cod_beca, descripcion_beca, fecha_inicio, fecha_fin, horario\n" +
"       FROM becas where cod_cb='"+codigoCB+"';");
         ResultSet rs = con.Consultar(SQL1);
        try {       
            while (rs.next()) {
                becas+= "<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getString(2)+
                        "</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+
                        "</td><td>"+rs.getString(5)+"</td></tr>";
                System.out.println("RESULTADO CONSULTA" +rs.getInt(1)+rs.getString(2)+rs.getString(3)+rs.getString(4)+rs.getString(5));
            }       
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(becas);
        return becas;
    }
     
}
