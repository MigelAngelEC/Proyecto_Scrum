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
public class clsInfoAcademicaReferences {

    private String cedula_ref;
    private String nombres_ref;
    private String cargo_ref;
    private String telefono;
    private String parentesco;

    public clsInfoAcademicaReferences() {

    }

    public clsInfoAcademicaReferences(String cedula_ref, String nombres_ref, String cargos_ref, String telefono, String parentesco) {
        this.cedula_ref = cedula_ref;
        this.nombres_ref = nombres_ref;
        this.cargo_ref = cargos_ref;
        this.parentesco = parentesco;
    }

    /**
     * @return the cedula_ref
     */
    public String getCedula_ref() {
        return cedula_ref;
    }

    /**
     * @param cedula_ref the cedula_ref to set
     */
    public void setCedula_ref(String cedula_ref) {
        this.cedula_ref = cedula_ref;
    }

    /**
     * @return the nombres_ref
     */
    public String getNombres_ref() {
        return nombres_ref;
    }

    /**
     * @param nombres_ref the nombres_ref to set
     */
    public void setNombres_ref(String nombres_ref) {
        this.nombres_ref = nombres_ref;
    }

    /**
     * @return the cargo_ref
     */
    public String getCargo_ref() {
        return cargo_ref;
    }

    /**
     * @param cargo_ref the cargo_ref to set
     */
    public void setCargo_ref(String cargo_ref) {
        this.cargo_ref = cargo_ref;
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
     * @return the parentesco
     */
    public String getParentesco() {
        return parentesco;
    }

    /**
     * @param parentesco the parentesco to set
     */
    public void setParentesco(String parentesco) {
        this.parentesco = parentesco;
    }

}
