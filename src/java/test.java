
import dao.DoDungDAO;
import dao.ThanhVienDAO;
import java.util.ArrayList;
import model.DoDung;
import model.ThanhVien;

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
        DoDungDAO dao = new DoDungDAO();
        ArrayList<DoDung> list = dao.timKiem("choi");
        System.out.println(list.size());
    }
}
