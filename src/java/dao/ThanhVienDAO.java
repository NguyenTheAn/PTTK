/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import model.ThanhVien;

/**
 *
 * @author ligirk
 */
public class ThanhVienDAO extends DAO{
    public ThanhVienDAO(){
        super();
    }
    public boolean kiemTraDangNhap(ThanhVien tv){
        ArrayList<ThanhVien> UserInfo = super.ReadUserInfo();
        for (ThanhVien i : UserInfo){
            if (i.equals(tv)){
                return true;
            }
        }
        return false;
    }
}
