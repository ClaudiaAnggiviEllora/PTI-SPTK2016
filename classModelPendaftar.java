package pti;

import java.io.File;
import java.io.FileNotFoundException;
import static java.lang.System.out;
import java.util.Formatter;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Feliks Yudha
 */
public class classModelPendaftar extends classModelAdmin {

    private String nama;

    /**
     * @return the nama
     */
    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public void creatPendaftar() {
         try {
            Scanner scan = new Scanner(new File("the\\dir\\myFile.extension"));
            Scanner keyboard = new Scanner(System.in);
            String pendaftar = scan.nextLine();
            String pass = scan.nextLine(); // looks at selected file in scan
            
            String inpPendaftar = keyboard.nextLine();
            String inpPass = keyboard.nextLine(); // gets input from user
            
            if (inpPendaftar.equals(pendaftar) && inpPass.equals(pass)) {
                System.out.print("your login message");
            } else {
                System.out.print("your error message");
            }
        } catch (FileNotFoundException ex) {
            Logger.getLogger(classModelAdmin.class.getName()).log(Level.SEVERE, null, ex);
        }
}
}
