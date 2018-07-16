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
            String SQL = ("Insert into usuarios (cedula,cod_perfil,cod_StartUp,nickname,password,nombres,apellidos,tel_fijo,tel_celular,email,direccion)values ('" + cedula + "','user',null,'" + nickname + "','" + password + "','" + Name + "','" + Lname + "','" + telefono + "','" + Celu + "','" + email + "','" + Direccion + "');");
            ClsConexion con = new ClsConexion();
            String eject = con.Ejecutar(SQL);
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
        String SQLAdded = " <table class=table table-responsive table-fit table-hover> <tr><th> Empresa</th><th>Cargo</th><th>Descripción</th><th>Tiempo Requerido</th><th>Experiencia Requerida</th><th>Estado de la Oferta</th> <th> Aplicar ¿?</th></tr>";
        try {
            ClsConexion con = new ClsConexion();
            clsempresa emp = new clsempresa();
            ResultSet rs = con.Consultar("select * from ofertas_empleo ;");
            while (rs.next()) {
                String empresa = emp.NameEnterprise(rs.getString(1));
                SQLAdded += "<tr><td>" + empresa + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(6) + "</td><td>" + rs.getString(7) + "</td><td>" + rs.getString(5) + "</td>"
                        + "<form action=ProcesarOferta.jsp><input type=text name=ofert value=" + rs.getString(2) + " hidden=true>"
                        + "<input type=text name=cedula value='" + this.CIUser(nickname) + "' hidden=true>"
                        + "<input type=text name=nickn value='" + nickname + "' hidden=true >"
                        + "<input type=text name=empre value='" + empresa + "' hidden=true >"
                        + "<input type=text name=cargo value='" + rs.getString(3) + "' hidden=true >"
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
            ResultSet rs = con.Consultar("SELECT ep.nom_empresa,ep.descripcion_emp,oe.caargo,oe.descripcion,oe.estado,op.cod_oferta, op.cedula FROM ofertas_aplicadas as op, ofertas_empleo as oe ,usuarios as users,empresas as ep WHERE users.nickname='" + nickname + " ' and oe.cod_oferta = op.cod_oferta AND users.cedula = op.cedula AND ep.ruc = oe.ruc;");
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

    public String PrintBeksApply(String nickname) {
        String SQLAdded = " <table class=table table-hover> <tr><th> Centro de Becas</th><th>Em@mail C.Becas</th><th>Descripción Beca</th><th>Fecha de Inicio </th> <th> Fecha de Finalización </th><th>Horario</th> <th> Eliminar ¿? </th></tr>";
        try {
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar("SELECT cb.NOMBRE_CB, cb.EMAIL, bc.DESCRIPCION_BECA, bc.FECHA_INICIO,bc.FECHA_FIN, bc.HORARIO ,ba.COD_BECA,ba.CEDULA FROM becas_aplicadas as ba, usuarios as users, centros__becas as cb,becas as bc WHERE users.nickname='" + nickname + "' and ba.cod_beca = bc.cod_beca AND users.cedula = ba.cedula AND cb.cod_cb = bc.cod_cb;");
            while (rs.next()) {
                SQLAdded += "<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(6) + "</td>"
                        + "<form action=ProcesarBecaAplicada.jsp>"
                        + "<input type=text name=codBeca value=" + rs.getString(7) + " hidden=true>"
                        + "<input type=text name=cedula value=" + rs.getString(8) + " hidden=true >"
                        + "<input type=text name=nickn value=" + nickname + " hidden=true >"
                        + "<td>  <button type=submit class=list-group-item>Eliminar Beca ¿? </button></td></form></tr>";
            }
        } catch (SQLException e) {
            System.out.println("Error" + e.getMessage());
        }
        SQLAdded += "</table>";
        return SQLAdded;
    }

    public String PrintExperience(String nickname) {
        String SQLAdded = " <table class=table table-hover> <tr class=active><th> Empresa</th><th>Tiempo Trabajado</th><th>Cargo Desempeñado</th></tr>";
        try {
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar("SELECT  xp.empresa, xp.tiempo, xp.cargo_desem FROM usuarios as users, experiencia_laboral as xp WHERE users.nickname='" + nickname + "' and users.cedula = xp.cedula;");
            while (rs.next()) {
                SQLAdded += "<tr><td>" + rs.getString(1) + "</td><td class=danger>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td></tr>";
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
            String eject = con.Ejecutar(SQL);
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

    public boolean EliminarBeca(String codBeca, String cedul) {
        boolean ejecuto = false;
        try {
            String SQL = ("Delete from becas_aplicadas where cod_beca='" + codBeca + "' and cedula='" + cedul + "'");
            ClsConexion con = new ClsConexion();
            String eject = con.Ejecutar(SQL);
            if (eject.equalsIgnoreCase("Datos insertados")) {
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

    public String PrintBecas(String nickname) {
        String SQLAdded = " <table class=table table-hover> <tr><th> Centro de Becas </th><th>Descripción de Beca</th><th>Fecha de Inicio</th><th>Fecha de Finalización</th><th>Horario</th> <th>Estado</th><th> Aplicar ¿?</th></tr>";
        try {
            ClsConexion con = new ClsConexion();
            clsempresa emp = new clsempresa();
            ResultSet rs = con.Consultar("SELECT cb.nombre_cb,bc.descripcion_beca,bc.fecha_inicio,bc.fecha_fin,bc.horario,bc.estado,bc.cod_beca FROM becas as bc,centros__becas as cb WHERE cb.cod_cb = bc.cod_cb;");
            while (rs.next()) {
                SQLAdded += "<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(6) + "</td>"
                        + "<form action=ProcesarBecaDispo.jsp>"
                        + "<input type=text name=cedula value=" + this.CIUser(nickname) + " hidden=true>"
                        + "<input type=text name=nickn value=" + nickname + " hidden=true >"
                        + "<input type=text name=codbeca value='" + rs.getString(7).trim() + "'hidden=true >"
                        + "<input type=text name=cedula value='" + this.CIUser(nickname) + "'hidden=true >";
                if (rs.getString(6).trim().equalsIgnoreCase("No Disponible")) {

                    SQLAdded += "<td>  <button title=\"Beca No Disponible, Imposible de Aplicar\" type=submit class=btn btn-link disabled=true>Aplicar </button></td></form></tr>";
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

    public boolean ApplyBeca(String codBeca, String cedul) {
        boolean ejecuto = false;
        try {
            String SQL = ("insert into becas_aplicadas (COD_BECA,CEDULA) values('" + codBeca + "','" + cedul + "');");
            ClsConexion con = new ClsConexion();
            String eject = con.Ejecutar(SQL);
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

    public boolean InsertarXP(String time, String empresa, String contacto, String cargo, String nickname) {
        boolean ejecuto = false;
        int max = 0;
        ClsConexion con = new ClsConexion();
        try {
            ResultSet rs = con.Consultar("Select Max(cod_refe) from experiencia_laboral");
            while (rs.next()) {
                max = rs.getInt(1);
            }
            max = max + 1;
            String SQL = "insert into experiencia_laboral (COD_REFE,CEDULA,EMPRESA,TIEMPO,CARGO_DESEM,CONTACTO) values(" + max + ",'" + this.CIUser(nickname) + "','" + empresa + "','" + time + "','" + cargo + "','" + contacto + "');";
            String eject = con.Ejecutar(SQL);
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

    public List<String> StartUP(String nick) {
        List<String> lista = new ArrayList<String>(4);
        try {
            String SQL = "SELECT st.cod_startup,st.nombres, st.descripcions FROM startups AS st, usuarios as users WHERE users.nickname='" + nick + "' and users.cod_startup = st.cod_startup;";
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar(SQL);
            while (rs.next()) {
                for (int i = 1; i < 4; i++) {
                    lista.add(rs.getString(i));
                }
            }
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }

        return lista;
    }

    public Integer StartUPUser(String nickname) {
        int start = 0;
        try {
            String SQL = "SELECT st.cod_startup FROM startups as st, usuarios as users WHERE users.nickname='" + nickname + "' and users.cod_startup = st.cod_startup;";
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar(SQL);
            while (rs.next()) {
                start = rs.getInt(1);

            }
        } catch (SQLException e) {
            System.out.println("Error" + e.getMessage());
        }
        return start;
    }

}
