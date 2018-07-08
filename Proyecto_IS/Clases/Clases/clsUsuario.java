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

    public List<String> ConsultarUsuario(String user) {
        List<String> lista = new ArrayList<String>(10);
        try {
            String SQL = "Select cedula,nickname,password,nombres,apellidos,email,tel_fijo,tel_celular,direccion from usuarios where nickname='" + user + "';";
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

    public String CIUser(String nick) {
        String ci = "";
        try {
            String SQL = "select cedula from usuarios where nickname='" + nick + "';";
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar(SQL);
            while (rs.next()) {
                ci = rs.getString(1);
            }
        } catch (SQLException e) {
            System.out.println("Error" + e.getMessage());
        }
        return ci;
    }

    public String PrintOferts(String nickname) {
        String SQLAdded = " <table class=table table-hover> <tr><th> Empresa</th><th>Cargo</th><th>Descripción</th><th>Tiempo Requerido</th><th>Experiencia Requerida</th><th>Estado de la Oferta</th> <th> Aplicar ¿?</th></tr>";
        try {
            ClsConexion con = new ClsConexion();
            clsempresa emp = new clsempresa();
            ResultSet rs = con.Consultar("select * from ofertas_empleo ;");
            while (rs.next()) {
                String empresa = emp.NameEnterprise(rs.getString(1));
                SQLAdded += "<tr><td>" + empresa + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(6) + "</td><td>" + rs.getString(7) + "</td><td>" + rs.getString(5) + "</td>"
                        + "<form action=ProcesarOferta.jsp><input type=text name=ofert value=" + rs.getString(2) + " hidden=true>"
                        + "<input type=text name=cedula value=" + this.CIUser(nickname) + " hidden=true>"
                        + "<input type=text name=nickn value=" + nickname + " hidden=true >"
                        + "<input type=text name=empre value=" + empresa + " hidden=true >"
                        + "<input type=text name=cargo value=" + rs.getString(3) + " hidden=true >"
                        + "<input type=text name=descr value='" + rs.getString(4).trim() + "'hidden=true >"
                        + "<input type=text name=time value='" + rs.getString(6).trim() + "'hidden=true >"
                        + "<input type=text name=exp value='" + rs.getString(7).trim() + "'hidden=true >"
                        + "<input type=text name=stado value='" + rs.getString(5).trim() + "'hidden=true >";
                if (rs.getString(5).trim().equalsIgnoreCase("No Disponible")) {

                    SQLAdded += "<td>  <button title=\"Oferta No Disponible, Imposible de Aplicar\" type=submit class=btn btn-link disabled=true>Aplicar </button></td></form></tr>";
                } else {
                    SQLAdded += "<td>  <button type=submit class=list-group-item>Aplicar </button></td></form></tr>";
                }
//                        + "<td>  <button type=submit class=list-group-item>Aplicar </button></td></form></tr>";
            }
        } catch (SQLException e) {
            System.out.println("Error" + e.getMessage());
        }
        SQLAdded += "</table>";
        return SQLAdded;
    }

    public String PrintOfertsApply(String nickname) {
        String SQLAdded = " <table class=table table-hover> <tr><th> Empresa</th><th>Descripción Empresa</th><th>Cargo</th><th>Descripción del Cargo </th> <th> Estado Oferta </th> <th> Eliminar ¿? </th></tr>";
        try {
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar("SELECT empresas.nom_empresa,empresas.descripcion_emp,ofertas_empleo.caargo,ofertas_empleo.descripcion,ofertas_empleo.estado,ofertas_aplicadas.cod_oferta, ofertas_aplicadas.cedula  FROM public.ofertas_aplicadas, public.ofertas_empleo,public.usuarios,public.empresas WHERE usuarios.nickname='" + nickname + "' and ofertas_empleo.cod_oferta = ofertas_aplicadas.cod_oferta AND usuarios.cedula = ofertas_aplicadas.cedula AND empresas.ruc = ofertas_empleo.ruc;");
            while (rs.next()) {
                SQLAdded += "<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td>"
                        + "<form action=ProcesarOfertaAplicada.jsp>"
                        + "<input type=text name=codofer value=" + rs.getString(6) + " hidden=true>"
                        + "<input type=text name=cedula value=" + rs.getString(7) + " hidden=true >"
                        + "<input type=text name=nickn value=" + nickname + " hidden=true >"
                        + "<td>  <button type=submit class=list-group-item>Eliminar Oferta ¿? </button></td></form></tr>";
            }
        } catch (SQLException e) {
            System.out.println("Error" + e.getMessage());
        }
        SQLAdded += "</table>";
        return SQLAdded;
    }

    public String PrintExperience(String nickname) {
        String SQLAdded = " <table class=table table-hover> <tr class=info><th> Empresa</th><th>Tiempo Trabajado</th><th>Cargo Desempeñado</th></tr>";
        try {
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar("	SELECT  experiencia_laboral.empresa, experiencia_laboral.tiempo, experiencia_laboral.cargo_desem FROM public.usuarios, public.experiencia_laboral WHERE usuarios.nickname='" + nickname + "' and usuarios.cedula = experiencia_laboral.cedula;");
            while (rs.next()) {
                SQLAdded += "<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td></tr>";
            }
        } catch (SQLException e) {
            System.out.println("Error" + e.getMessage());
        }
        SQLAdded += "</table>";
        return SQLAdded;
    }

    public boolean EliminarOferta(String codOfer, String cedul) {
        boolean ejecuto = false;
        try {
            String SQL = ("DELETE FROM ofertas_aplicadas WHERE cod_oferta='" + codOfer + "' and cedula='" + cedul + "';");
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
