
package ro.webapp.login;

import java.io.Serializable;

public class UserLogin implements Serializable {
    private String nameUser;
    private String passUser;
    private String locatieUser;

    public UserLogin(){
        this.nameUser = null;
        this.passUser = null;
    }
    public UserLogin(String nameUser,String passUser, String locatieUser){
        this.nameUser = nameUser;
        this.passUser = passUser;
        this.locatieUser = locatieUser;
    }
    public String getLocatieUser() {
        return locatieUser;
    }
    public void setLocatieUser(String locatieUser) {
        this.locatieUser = locatieUser;
    }
    public String getNameUser() {
        return nameUser;
    }
    public void setNameUser(String nameUser) {
        this.nameUser = nameUser;
    }
    public String getPassUser() {
        return passUser;
    }
    public void setPassUser(String passUser) {
        this.passUser = passUser;
    }
    

    
}
