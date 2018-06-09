/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author migue
 */
public class clsempresa {

    private String NombreEmpresa;
    private String ruc;
    private String direccion;
    private String telefono;
    private String Email;
    private String Descripcion ;

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
    private String Password;

    public clsempresa(String ruc,String NombreEmpresa , String direccion, String telefono, String Email, String Descripcion,String Password) {
        this.NombreEmpresa = NombreEmpresa;
        this.ruc = ruc;
        this.direccion = direccion;
        this.telefono = telefono;
        this.Email = Email;
        this.Descripcion = Descripcion;
        this.Password = Password;
    }

    public String getNombreEmpresa() {
        return NombreEmpresa;
    }

    public void setNombreEmpresa(String NombreEmpresa) {
        this.NombreEmpresa = NombreEmpresa;
    }

    public String getRuc() {
        return ruc;
    }

    public void setRuc(String ruc) {
        this.ruc = ruc;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
   

    

    
    
    public boolean InsertarUsuario(String ruc,  String NombreEmpresa, String Direccion, String Telefono, String email, String Descripcion,String Password){
        boolean ejecuto=false;
        try {
            String SQL =("Insert into empresas values('"+ruc+ "','2','" +NombreEmpresa+",'"+Direccion+"','"+Telefono+"','"+email+"','"+Descripcion+"','"+Password+"')");
            ClsConexion con = new ClsConexion();
            con.Ejecutar(SQL);
            //ejecuto=true;
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
            ejecuto=false;
        }
        return ejecuto;
    }
}

