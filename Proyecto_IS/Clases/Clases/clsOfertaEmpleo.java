package Clases;

import java.sql.ResultSet;
import java.sql.SQLException;
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

    public boolean InsertarOfertaEmpresa(String ruc, int cod, String carg, String desc) {
        boolean ejecuto = false;
        try {
            String SQL = ("insert into ofertas_empleo values ('" + ruc + "'," + cod + ",'" + carg + "','" + desc + "');");
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
}
