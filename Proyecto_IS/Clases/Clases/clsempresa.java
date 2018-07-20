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

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
    private String Descripcion;
    private String Password;

    public clsempresa() {

    }

    public clsempresa(String ruc, String NombreEmpresa, String direccion, String telefono, String Email, String Descripcion, String Password) {
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
            String SQL = ("Insert into empresas (RUC,COD_PERFIL,NOM_EMPRESA,DIRECCION,TELEFONO,EMAIL,DESCRIPCION_EMP,PASSWORD_E) values('" + ruct + "','3','" + nempresa + "','" + direc + "','" + telf + "','" + mail + "','" + desc + "','" + pwd + "');");
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

    public List<String> ConsultarEmpresa(String email) {
        List<String> lista = new ArrayList<String>(8);
        try {
            String SQL = ("select ruc,nom_empresa,direccion,telefono,email,descripcion_emp,password_e from empresas where email='" + email + "'");
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar(SQL);
            while (rs.next()) {
                for (int i = 1; i < 8; i++) {
                    lista.add(rs.getString(i));
                }
            }
            for (int i = 0; i < lista.size(); i++) {
                System.out.println(lista.get(i));
            }
        } catch (SQLException e) {
        }
        return lista;
    }

    public boolean ActualizarEmpresa(String ruct, String nempresa, String direc, String telf, String mail, String desc, String pwd) {
        boolean ejecuto = false;
        try {
            String SQL = ("update empresas set nom_empresa='" + nempresa + "',direccion='" + direc + "',telefono='" + telf + "',email='" + mail + "',descripcion_emp='" + desc + "',password_e='" + pwd + "' where ruc='" + ruct + "'");
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

    public String NameEnterprise1() {
        String empresa = "";
        try {
            String SQL = "select * from empresas ";
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar(SQL);
            while (rs.next()) {
                empresa = rs.getString(1);
            }
        } catch (SQLException e) {
        }
        return empresa.trim();

    }

    public String NameEnterprise(String ruct) {
        String empresa = "";
        try {
            String SQL = "select nom_empresa from empresas where ruc ='" + ruct + "';";
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar(SQL);
            while (rs.next()) {
                empresa = rs.getString(1);
            }
        } catch (SQLException e) {
        }
        return empresa.trim();
    }

    public boolean AplicarO(String cod, String ci) {
        boolean ejecuto = false;
        try {
            String SQL = ("insert into ofertas_aplicadas (COD_OFERTA,CEDULA) values ('" + cod + "','" + ci + "');");
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

    public String RucEnterprise(String email) {
        String ruc = "";
        try {
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar("Select ruc from empresas where email='" + email + "'");
            while (rs.next()) {
                ruc = rs.getString(1);
            }
        } catch (SQLException e) {
            System.out.println("Error" + e.getMessage());
        }
        return ruc;
    }
}
