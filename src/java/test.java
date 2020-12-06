
import dao.DoDungDAO;
import dao.DoDungTrongPhongDAO;
import dao.PhongTroDAO;
import dao.ThanhVienDAO;
import dao.ThongKeDoDungDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.DoDung;
import model.DoDungTrongPhong;
import model.PhongTro;
import model.ThanhVien;
import model.ThongKeDoDung;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author ligirk
 */
public class test {

    public static void main(String[] args) {
        try {
            ThanhVienDAO dao = new ThanhVienDAO();
            ThanhVien tv1 = new ThanhVien("", "ligirk", "123456", "Nam", "0975581382", "", "Nguyen The An", "Ha Noi", "12/12/1999");
            ThanhVien tv2 = new ThanhVien("", "ha123", "123456", "Nu", "123456789", "", "Tran Thi Ha", "Ha Noi", "01/03/1999");
            ThanhVien tv3 = new ThanhVien("", "son456", "123456", "Nam", "123456789", "", "Tran Van Son", "Ha Noi", "11/05/1999");
            ThanhVien tv4 = new ThanhVien("", "hai789", "123456", "Nam", "123456789", "", "Nguyen Van Hai", "Ha Noi", "09/11/1999");
            ThanhVien tv5 = new ThanhVien("", "hung234", "123456", "Nam", "123456789", "", "Le Van Hung", "Ha Noi", "24/06/1999");
            ThanhVien tv6 = new ThanhVien("", "hien345", "123456", "Nu", "123456789", "", "Nguyen Thi Hien", "Ha Noi", "15/07/1999");
            ThanhVien tv7 = new ThanhVien("", "duc567", "123456", "Nam", "123456789", "", "Tran Minh Duc", "Ha Noi", "16/11/1999");
            ThanhVien tv8 = new ThanhVien("", "my678", "123456", "Nu", "123456789", "", "Phung Ha My", "Ha Noi", "18/09/1999");
            ThanhVien tv9 = new ThanhVien("", "linh012", "123456", "Nu", "123456789", "", "Nguyen Thi Linh", "Ha Noi", "20/05/1999");
            ThanhVien tv10 = new ThanhVien("", "doan246", "123456", "Nam", "123456789", "", "Nguyen Van Doan", "Ha Noi", "14/02/1999");
            dao.SaveUser(tv1);
            dao.SaveUser(tv2);
            dao.SaveUser(tv3);
            dao.SaveUser(tv4);
            dao.SaveUser(tv5);
            dao.SaveUser(tv6);
            dao.SaveUser(tv7);
            dao.SaveUser(tv8);
            dao.SaveUser(tv9);
            dao.SaveUser(tv10);
            
        } catch (Exception e) {
        }
    }
}
