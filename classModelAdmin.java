/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pti;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Feliks Yudha
 */
public class classModelAdmin {
    // public static void main(String[] args) {

    private String noID;
    private String password;

    public classModelAdmin() {
    }

    public classModelAdmin(String noID, String password) {
        this.noID = noID;
        this.password = password;
    }

    public String getNoID() {
        return noID;
    }

    public void setNoID(String noID) {
        this.noID = noID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void creatAdmin() {
        try {
            Scanner scan = new Scanner(new File("the\\dir\\myFile.extension"));
            Scanner keyboard = new Scanner(System.in);
            String admin = scan.nextLine();
            String pass = scan.nextLine(); // looks at selected file in scan
            
            String inpAdmin = keyboard.nextLine();
            String inpPass = keyboard.nextLine(); // gets input from user
            
            if (inpAdmin.equals(admin) && inpPass.equals(pass)) {
                System.out.print("your login message");
            } else {
                System.out.print("your error message");
            }
        } catch (FileNotFoundException ex) {
            Logger.getLogger(classModelAdmin.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
