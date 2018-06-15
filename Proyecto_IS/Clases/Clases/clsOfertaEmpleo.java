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
    private String NombreEmpresa;
    private String ruc;
    private String direccion;
    private String telefono;
    private String Email;
    private String Descripcion;
    private String Password;

    public clsOfertaEmpleo() {

    }

    public clsOfertaEmpleo(String ruc, String NombreEmpresa, String direccion, String telefono, String Email, String Descripcion, String Password) {
        this.ruc = ruc;
        this.NombreEmpresa = NombreEmpresa;
        this.direccion = direccion;
        this.telefono = telefono;
        this.Email = Email;
        this.Descripcion = Descripcion;
        this.Password = Password;
    }

    /**
     * @return the NombreEmpresa
     */
    public String getNombreEmpresa() {
        return NombreEmpresa;
    }

    /**
     * @param NombreEmpresa the NombreEmpresa to set
     */
    public void setNombreEmpresa(String NombreEmpresa) {
        this.NombreEmpresa = NombreEmpresa;
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
     * @return the direccion
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * @param direccion the direccion to set
     */
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    /**
     * @return the telefono
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * @param telefono the telefono to set
     */
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    /**
     * @return the Email
     */
    public String getEmail() {
        return Email;
    }

    /**
     * @param Email the Email to set
     */
    public void setEmail(String Email) {
        this.Email = Email;
    }

    /**
     * @return the Descripcion
     */
    public String getDescripcion() {
        return Descripcion;
    }

    /**
     * @param Descripcion the Descripcion to set
     */
    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    /**
     * @return the Password
     */
    public String getPassword() {
        return Password;
    }

    /**
     * @param Password the Password to set
     */
    public void setPassword(String Password) {
        this.Password = Password;
    }

    public boolean InsertarEmpresa(String ruct, String nempresa, String direc, String telf, String mail, String desc, String pwd) {
        boolean ejecuto = false;
        try {
            String SQL = ("Insert into empresas values('" + ruct + "','2','" + nempresa + "','" + direc + "','" + telf + "','" + mail + "','" + desc + "','" + pwd + "');");
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
