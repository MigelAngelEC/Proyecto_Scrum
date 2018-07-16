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

/**
 *
 * @author EstIvonneGeovannaCam
 */
public class clsCentroBecas {

    int cod_b;
    String cod_perfil, nombre_cb, direccion, telefonos, email, password;

    public int getCod_b() {
        return cod_b;
    }

    public void setCod_b(int cod_b) {
        this.cod_b = cod_b;
    }

    public String getCod_perfil() {
        return cod_perfil;
    }

    public void setCod_perfil(String cod_perfil) {
        this.cod_perfil = cod_perfil;
    }

    public String getNombre_cb() {
        return nombre_cb;
    }

    public void setNombre_cb(String nombre_cb) {
        this.nombre_cb = nombre_cb;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefonos() {
        return telefonos;
    }

    public void setTelefonos(String telefonos) {
        this.telefonos = telefonos;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public static String autenticacion_cb(String correo, String pass) {
        String log_cb = "false";
        ClsConexion con = new ClsConexion();
        ResultSet rs = null;
        String sql_CB = "SELECT cod_cb FROM centros__becas WHERE email='" + correo + "' AND password='" + pass + "'";

        try {
            rs = con.Consultar(sql_CB);
            while (rs.next()) {
                log_cb = "true";
                System.out.println("codigo cb" + rs.getString(0));
            }
        } catch (SQLException e) {
            // log_cb="false";
            System.out.println("No esta registrado");
        }
        System.out.println(log_cb);
        return log_cb;
    }

    public boolean InsertarCb(String id, String nombre, String dir, String tel, String email, String pwd) {
        boolean ejecuto = false;
        try {
            String SQL = ("INSERT INTO centros__becas(\n"
                    + "            cod_cb, cod_perfil, nombre_cb, direccion, telefonos, email, password)\n"
                    + "           VALUES ('" + id + "','cbeca','" + nombre + "','" + dir + "','" + tel + "','" + email + "','" + pwd + "');");
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

    public List<String> ConsultarCb(String email) {
        List<String> lista = new ArrayList<String>(10);
        try {
            String SQL = ("SELECT cod_cb, cod_perfil, nombre_cb, direccion, telefonos, email, password\n"
                    + "  FROM centros__becas where email='" + email + "'");
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar(SQL);
            while (rs.next()) {
                for (int i = 1; i < 10; i++) {
                    lista.add(rs.getString(i));
                }
            }
            for (int i = 0; i < lista.size(); i++) {
                System.out.println(lista.get(i));
            }
        } catch (Exception e) {
        }
        return lista;
    }

    //INFORMACION POR SEPARADO DE LOS DCENTROS REGISTRADOS CONSULTADOS EN BASE AL EMAIL DE CADA CENTRO
    public String CodigoCB(String email) {
        String codigo = null;
        ClsConexion con = new ClsConexion();
        String SQL1 = ("SELECT cod_cb  FROM centros__becas where email='" + email + "'");
        ResultSet rs = con.Consultar(SQL1);
        try {
            while (rs.next()) {
                codigo = rs.getString(1);
                System.out.println("RESULTADO CONSULTA" + rs.getString(1));
                //+ "<tr>nombre+"rs.getString(1)+"</tr><tr>dir"+rs.getString(2)+"</tr><tr>fonos"+rs.getString(3)+"</tr></table>;";
            }

        } catch (Exception e) {
        }
        System.out.println("CODIGO" + codigo);
        return codigo;
    }

    public String NombreCB(String email) {
        String nombre = null;
        ClsConexion con = new ClsConexion();
        String SQL1 = ("SELECT nombre_cb FROM centros__becas where email='" + email + "'");
        ResultSet rs = con.Consultar(SQL1);
        try {
            while (rs.next()) {
                nombre = rs.getString(1);
                System.out.println("RESULTADO CONSULTA" + rs.getString(1));
                //+ "<tr>nombre+"rs.getString(1)+"</tr><tr>dir"+rs.getString(2)+"</tr><tr>fonos"+rs.getString(3)+"</tr></table>;";
            }

        } catch (Exception e) {
        }
        System.out.println(" " + nombre);
        return nombre;
    }

    public String DireccionCB(String email) {
        String direccion = null;
        ClsConexion con = new ClsConexion();
        String SQL1 = ("SELECT direccion FROM centros__becas where email='" + email + "'");
        ResultSet rs = con.Consultar(SQL1);
        try {
            while (rs.next()) {
                direccion = rs.getString(1);
                System.out.println("RESULTADO CONSULTA" + rs.getString(1));
                //+ "<tr>nombre+"rs.getString(1)+"</tr><tr>dir"+rs.getString(2)+"</tr><tr>fonos"+rs.getString(3)+"</tr></table>;";
            }
        } catch (Exception e) {
        }
        System.out.println(" " + direccion);
        return direccion;
    }

    public String TelefonosCB(String email) {
        String telefono = null;

        ClsConexion con = new ClsConexion();
        String SQL1 = ("SELECT telefonos  FROM centros__becas where email='" + email + "'");
        ResultSet rs = con.Consultar(SQL1);
        try {
            while (rs.next()) {
                telefono = rs.getString(1);
                System.out.println("RESULTADO CONSULTA" + rs.getString(1));
            }
        } catch (Exception e) {
        }
        System.out.println(" " + telefono);
        return telefono;
    }

    //TRANSACCIONES REALIZADAS SOBRE LOS DATOS DEL CENTRO DE BECA
    public boolean ActualizarCb(String id, String nombre, String dir, String tel, String email, String pwd) {
        boolean ejecuto = false;
        try {

            String SQL = ("UPDATE centros__becas\n"
                    + "   SET nombre_cb='" + nombre + "',direccion='" + dir + "',telefono='" + tel + "',email='" + email + "',password='" + pwd + "' where cod_cb='" + id + "'");
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

    //CENTROS DE BECAS POSTULACION PUBLICO
    public String PostulacionPublico() {
        String centro = "";
        ClsConexion con = new ClsConexion();
        String SQL1 = ("SELECT cod_cb, nombre_cb FROM centros__becas;");
        ResultSet rs = con.Consultar(SQL1);
        try {
            while (rs.next()) {
                centro += "<a href='#' class='list-group-item'>" + rs.getString(2) + "</a>";

                System.out.println("RESULTADO CONSULTA" + rs.getString(1));
                //+ "<tr>nombre+"rs.getString(1)+"</tr><tr>dir"+rs.getString(2)+"</tr><tr>fonos"+rs.getString(3)+"</tr></table>;";
            }

        } catch (Exception e) {
        }
        System.out.println(" " + centro);
        return centro;
    }

    public String PrintBecas(String emailcb) {
        String SQLAdded = " <table class=table table-hover> <tr><th>Centro de Beca</th><th>Descripción de Beca</th><th>Fecha de Inicio</th><th>Fecha de Finalización </th><th>Horario de la Beca </th><th>Estado de la Beca</th> <th> Editar ¿?</th><th> Eliminar ¿?</th></tr>";
        try {
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar("SELECT cb.nombre_cb, bc.descripcion_beca, bc.fecha_inicio, bc.fecha_fin, bc.horario, bc.estado,bc.COD_BECA,bc.COD_CB FROM centros__becas as cb, becas as bc WHERE cb.EMAIL='" + emailcb + "' and cb.cod_cb = bc.cod_cb;");
            while (rs.next()) {
                SQLAdded += "<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(6) + "</td>"
                        + "<form action=BecasEdit.jsp>"
                        + "<input type=text name=codcbeca value='" + rs.getString(8).trim() + "'hidden=true >"
                        + "<input type=text name=codobeca value='" + rs.getInt(7) + "'hidden=true >"
                        + "<input type=text name=emailcb value='" + emailcb + "'hidden=true >";
                SQLAdded += "<td>  <button type=submit class=list-group-item>Editar </button></td></form>"
                        + "<form action=BecasDelete.jsp>"
                        + "<input type=text name=codcbeca value='" + rs.getString(8).trim() + "'hidden=true >"
                        + "<input type=text name=codobeca value='" + rs.getInt(7) + "'hidden=true >"
                        + "<input type=text name=emailcb value='" + emailcb + "'hidden=true >";
                SQLAdded += "<td>  <button type=submit class=list-group-item data-placement=\"right\"  data-toggle=tooltip title=\"¿Esta seguro que desea eliminar esta beca?. \n No se pueden Deshacer los cambios \">Eliminar </button></td></form></tr>";
//                        + "<td>  <button type=submit class=list-group-item>Aplicar </button></td></form></tr>";
            }
        } catch (SQLException e) {
            System.out.println("Error" + e.getMessage());
        }
        SQLAdded += "</table>";
        return SQLAdded;
    }

    public String CODECentro(String emailcb) {
        String codCb = "";
        try {
            String SQL = "SELECT COD_CB FROM centros__becas WHERE EMAIL='" + emailcb + "'";
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar(SQL);
            while (rs.next()) {
                codCb = rs.getString(1);
            }
        } catch (SQLException e) {
        }
        return codCb;
    }

    public boolean InsertarBeca(String emailcb, String descrip, String fechaI, String fechaF, String Horario, String Estado) {
        boolean ejecuto = false;
        try {
            String codbeca = this.CODECentro(emailcb);
            String SQL = ("Insert into becas (COD_CB,COD_BECA,DESCRIPCION_BECA,FECHA_INICIO,FECHA_FIN,HORARIO,ESTADO) VALUES ('" + codbeca + "',0,'" + descrip + "','" + fechaI + "','" + fechaF + "','" + Horario + "','" + Estado + "');;");
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

    public List<String> ConsultarBeca(String codcb, String beca) {
        List<String> lista = new ArrayList<String>(7);
        try {
            String SQL = "SELECT bc.descripcion_beca, bc.fecha_inicio, bc.fecha_fin, bc.horario, bc.estado FROM becas as bc WHERE bc.COD_CB='" + codcb + "' and bc.COD_BECA=" + beca.trim() + ";";
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar(SQL);
            while (rs.next()) {
                for (int i = 1; i < 6; i++) {
                    lista.add(rs.getString(i));
                }

            }
            System.out.println("Clases.clsCentroBecas.ConsultarBeca()" + lista.get(1));
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }

        return lista;
    }

    public boolean UpdateBeca(String codecb, String codebc, String descrip, String fechaI, String fechaF, String Horario, String Estado) {
        boolean ejecuto = false;
        try {
            String SQL = ("update becas SET DESCRIPCION_BECA='" + descrip + "', FECHA_INICIO='" + fechaI + "',FECHA_FIN='" + fechaF + "',HORARIO='" + Horario + "',ESTADO='" + Estado + "' WHERE COD_CB='" + codecb + "'and COD_BECA=" + codebc.trim() + ";");
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
}
