/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author rowel
 */
public class clsstarups {

    public clsstarups(String Cod_Start, String Nombre, String Descripcion) {
        this.Cod_Start = Cod_Start;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
    }

    public String getCod_Start() {
        return Cod_Start;
    }

    public void setCod_Start(String Cod_Start) {
        this.Cod_Start = Cod_Start;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
     private String Cod_Start;
    private String Nombre  ;
    private String Descripcion ;
     public boolean InsertarStart(String Cod_Start, String Nombre, String Descripcion) {
        boolean ejecuto = false;
        try {
            String SQL = ("Insert into usuarios values ('" + Cod_Start + "','1','" + Nombre + "','" + Descripcion +  "');");
            ClsConexion con = new ClsConexion();
            con.Ejecutar(SQL);
            ejecuto = true;
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
            ejecuto = false;
        }
        return ejecuto;
    } /// jdkajsdkajsdkasd
}
