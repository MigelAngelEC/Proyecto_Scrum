package Clases;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author rowel
 */
public class clsOfertaEmpleo {

    private String ruc;
    private int cod_Oferta;
    private String cargo;
    private String descrip;

    public clsOfertaEmpleo() {

    }

    public clsOfertaEmpleo(String ruc, int cod, String cargo, String desc) {
        this.ruc = ruc;
        this.cod_Oferta = cod;
        this.cargo = cargo;
        this.descrip = desc;
    }

    /**
     * @return the ruc
     */
    public String getRuc() {
        return ruc;
    }

    /**
     * @param ruc the ruc to set
     */
    public void setRuc(String ruc) {
        this.ruc = ruc;
    }

    /**
     * @return the cod_Oferta
     */
    public int getCod_Oferta() {
        return cod_Oferta;
    }

    /**
     * @param cod_Oferta the cod_Oferta to set
     */
    public void setCod_Oferta(int cod_Oferta) {
        this.cod_Oferta = cod_Oferta;
    }

    /**
     * @return the cargo
     */
    public String getCargo() {
        return cargo;
    }

    /**
     * @param cargo the cargo to set
     */
    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    /**
     * @return the descrip
     */
    public String getDescrip() {
        return descrip;
    }

    /**
     * @param descrip the descrip to set
     */
    public void setDescrip(String descrip) {
        this.descrip = descrip;
    }

    public boolean InsertarOfertaEmpresa(String ruc, int cod, String carg, String desc, String time, String xp) {
        boolean ejecuto = false;
        try {
            String SQL = ("insert into ofertas_empleo values ('" + ruc + "'," + cod + ",'" + carg + "','" + desc + "','Disponible','" + time + "','" + xp + "');");
            ClsConexion con = new ClsConexion();
            con.Ejecutar(SQL);
            ejecuto = true;
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
            ejecuto = false;
        }
        return ejecuto;
    }

    public boolean UpdateOfertaLaboral(String ruc, String cod, String carg, String desc, String time, String xp, String state) {
        boolean ejecuto = false;
        try {
            String SQL = ("update ofertas_empleo set caargo='" + carg + "', descripcion='" + desc + "',estado='" + state + "',tiempo_req='" + time + "',ex_req='" + xp + "' where ruc='" + ruc + "' and cod_oferta='" + cod + "'");
            ClsConexion con = new ClsConexion();
            con.Ejecutar(SQL);
            ejecuto = true;
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
            ejecuto = false;
        }
        return ejecuto;
    }

    public boolean DeleteOfertaLabora(String ruc, String cod) {
        boolean ejecuto = false;
        try {
            String SQL = ("Delete From ofertas_empleo where ruc='" + ruc + "' and cod_oferta='" + cod + "'");
            ClsConexion con = new ClsConexion();
            con.Ejecutar(SQL);
            ejecuto = true;
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
            ejecuto = false;
        }
        return ejecuto;
    }

    public Integer ConsultarMaxOferta() {
        int fmax = 0;
        String complete = "";
        try {

            ClsConexion con = new ClsConexion();
            String SQL = "Select MAX(cod_oferta) from ofertas_empleo;";
            ResultSet rs = con.Consultar(SQL);
            while (rs.next()) {
                fmax = rs.getInt(1);
            }
            fmax = fmax + 1;
        } catch (SQLException ex) {
            Logger.getLogger(clsOfertaEmpleo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return fmax;
    }

    public String PrintOferts(String emailkorp) {
        String SQLAdded = " <table class=table table-hover> <tr><th>Cargo</th><th>Descripción</th><th>Tiempo Requerido</th><th>Experiencia Requerida</th><th>Estado de la Oferta</th> <th> Editar ¿?</th><th> Eliminar ¿?</th></tr>";
        try {
            ClsConexion con = new ClsConexion();
            clsempresa emp = new clsempresa();
            String Ruc = emp.RucEnterprise(emailkorp);
            ResultSet rs = con.Consultar("select * from ofertas_empleo where ruc='" + Ruc + "' ;");
            while (rs.next()) {
                SQLAdded += "<tr><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(6) + "</td><td>" + rs.getString(7) + "</td><td>" + rs.getString(5) + "</td>"
                        + "<form action=OfertasEEdit.jsp>"
                        + "<input type=text name=ruc value='" + rs.getString(1).trim() + "'hidden=true >"
                        + "<input type=text name=codofer value='" + rs.getString(2).trim() + "'hidden=true >"
                        + "<input type=text name=emaile value='" + emailkorp + "'hidden=true >";
                SQLAdded += "<td>  <button type=submit class=list-group-item>Editar </button></td></form>"
                        + "<form action=OfertasEDelet.jsp>"
                        + "<input type=text name=ruc value='" + rs.getString(1).trim() + "'hidden=true >"
                        + "<input type=text name=codofer value='" + rs.getString(2).trim() + "'hidden=true >"
                        + "<input type=text name=emaile value='" + emailkorp + "'hidden=true >";
                SQLAdded += "<td>  <button type=submit class=list-group-item>Eliminar </button></td></form></tr>";
//                        + "<td>  <button type=submit class=list-group-item>Aplicar </button></td></form></tr>";
            }
        } catch (SQLException e) {
            System.out.println("Error" + e.getMessage());
        }
        SQLAdded += "</table>";
        return SQLAdded;
    }

    public List<String> ConsultarOferta(String ruc) {
        List<String> lista = new ArrayList<String>(10);
        try {
            String SQL = "select * from ofertas_empleo where ruc='" + ruc + "'";
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar(SQL);
            while (rs.next()) {
                for (int i = 1; i < 10; i++) {
                    lista.add(rs.getString(i));
                }
            }
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }

        return lista;
    }
}
