package Clases;

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

    public clsOfertaEmpleo(String ruc, String Cod_Oferta, String Cargo, String Descripcion) {
        this.ruc = ruc;
        this.Cod_Oferta = Cod_Oferta;
        this.Cargo = Cargo;
        this.Descripcion = Descripcion;
    }

    public String getRuc() {
        return ruc;
    }

    public void setRuc(String ruc) {
        this.ruc = ruc;
    }

    public String getCod_Oferta() {
        return Cod_Oferta;
    }

    public void setCod_Oferta(String Cod_Oferta) {
        this.Cod_Oferta = Cod_Oferta;
    }

    public String getCargo() {
        return Cargo;
    }

    public void setCargo(String Cargo) {
        this.Cargo = Cargo;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
    
    private String ruc;
    private String Cod_Oferta;
    private String Cargo;
   
    private String Descripcion;
   

    public clsOfertaEmpleo() {

    }

    

    public boolean InsertarEmpresa(String ruc, String Cod_Oferta, String Cargo, String Descripcion) {
        boolean ejecuto = false;
        try {
            String SQL = ("Insert into Oferta_Empleo values('" + ruc + "','" + Cod_Oferta + "','" + Cargo + "','" + Descripcion +  "');");
            
            ClsConexion con = new ClsConexion();
            con.Ejecutar(SQL);
            ejecuto = true;
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
            ejecuto = false;
        }
        return ejecuto;
    }

}
