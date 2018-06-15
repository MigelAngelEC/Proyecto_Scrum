/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

/**
 *
 * @author migue
 */
public class clsUsuario {

    //Datoos de usuario
    private String cedula;
    private String nickname;
    private String password;
    private String nombre;
    private String apellido;
    private String email;
    private String direccion;
    private String telefono;
    private String celular;

    public clsUsuario() {

    }

    public clsUsuario(String cedula, String nickname, String password, String nombre, String apellido, String email, String direccion, String telefono, String celular) {
        this.cedula = cedula;
        this.nickname = nickname;
        this.password = password;
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
        this.direccion = direccion;
        this.telefono = telefono;
        this.celular = celular;

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
     * @return the perfiles
     */
    /**
     * @return the nickname
     */
    public String getNickname() {
        return nickname;
    }

    /**
     * @param nickname the nickname to set
     */
    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
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

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
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

    public boolean InsertarUsuario(String cedula, String nickname, String password, String Name, String Lname, String email, String Direccion, String telefono, String Celu) {
        boolean ejecuto = false;
        try {
            String SQL = ("Insert into usuarios values ('" + cedula + "','1','" + nickname + "','" + password + "','" + Name + "','" + Lname + "','" + telefono + "','" + Celu + "','" + email + "','" + Direccion + "');");
            ClsConexion con = new ClsConexion();
            con.Ejecutar(SQL);
            ejecuto = true;
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
            ejecuto = false;
        }
        return ejecuto;
    }

    public Vector ConsultarUsuario(String user) {
        Vector vec = new Vector();
        try {
            String SQL = "Select cedula,nickname,password,nombres,apellidos,tel_fijo,tel_celular,email,direccion from usuarios where nickname='MiguelAEC';";
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar(SQL);
            while (rs.next()) {
                for (int i = 1; i < 9; i++) {
                    vec.addElement(rs.getString(i));
                }
            }
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }

        return vec;
    }
}
