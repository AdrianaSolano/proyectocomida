/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloVO;

;

/**
 *
 * @author Juliana
 */
public class ClienteVO {
    private String cliId,cliNombre,cliApellido,cliCorreo,cliTelefono,cliDireccion;

     public ClienteVO(String cliId, String cliNombre, String cliApellido, String cliCorreo, String cliTelefono, String cliDireccion) {
        this.cliId = cliId;
        this.cliNombre = cliNombre;
        this.cliApellido =cliApellido ;
        this.cliCorreo = cliCorreo;
        this.cliTelefono = cliTelefono;
        this.cliDireccion = cliDireccion;
        
        
        
        
     }

    public String getCliId() {
        return cliId;
    }

    public void setCliId(String cliId) {
        this.cliId = cliId;
    }

    public String getCliNombre() {
        return cliNombre;
    }

    public void setCliNombre(String cliNombre) {
        this.cliNombre = cliNombre;
    }

    public String getCliApellido() {
        return cliApellido;
    }

    public void setCliApellido(String cliApellido) {
        this.cliApellido = cliApellido;
    }

    public String getCliCorreo() {
        return cliCorreo;
    }

    public void setCliCorreo(String cliCorreo) {
        this.cliCorreo = cliCorreo;
    }

    public String getCliTelefono() {
        return cliTelefono;
    }

    public void setCliTelefono(String cliTelefono) {
        this.cliTelefono = cliTelefono;
    }

    public String getCliDireccion() {
        return cliDireccion;
    }

    public void setCliDireccion(String cliDireccion) {
        this.cliDireccion = cliDireccion;
    }
}