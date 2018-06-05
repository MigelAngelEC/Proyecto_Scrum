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
public class clsUsuario {

    private String cedula;
    private Integer edad;
    private String direccion;
    private String telefono;
    private String celular;
    private String nombre;
    private String apellido;

    public clsUsuario() {

    }

    public clsUsuario(String cedula, Integer edad, String direccion, String telefono, String celular, String nombre, String apellido) {
        this.cedula = cedula;
        this.edad=edad;
        this.direccion=direccion;
        this.telefono=telefono;
        this.celular=celular;
        this.nombre=nombre;
        this.apellido=apellido;
    }

    /**
     * @return the cedula
     */
    public String getCedula() {
        return cedula;
    }

    /**
     * @param cedula the cedula to set
     */
    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    /**
     * @return the edad
     */
    public Integer getEdad() {
        return edad;
    }

    /**
     * @param edad the edad to set
     */
    public void setEdad(Integer edad) {
        this.edad = edad;
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
     * @return the celular
     */
    public String getCelular() {
        return celular;
    }

    /**
     * @param celular the celular to set
     */
    public void setCelular(String celular) {
        this.celular = celular;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the apellido
     */
    public String getApellido() {
        return apellido;
    }

    /**
     * @param apellido the apellido to set
     */
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    
    public boolean InsertarUsuario(String cedula, int year, String Direccion, String telefono, String Celu, String Name, String Lname){
        boolean ejecuto=false;
        try {
            String SQL =("Insert into \"Informacion_Usuarios\" values('"+cedula+"',"+year+",'"+Direccion+"','"+telefono+"','"+Celu+"','"+Name+"','"+Lname+"')");
            ClsConexion con = new ClsConexion();
            con.Ejecutar(SQL);
            ejecuto=true;
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
            ejecuto=false;
        }
        return ejecuto;
    }
}
