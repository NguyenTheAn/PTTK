/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import model.DoDung;
import model.ThongKeDoDung;

/**
 *
 * @author ligirk
 */
public class ThongKeDoDungDAO extends DAO{
    public ThongKeDoDungDAO(){
        super();
    }
    
    public ArrayList<ThongKeDoDung> Read(){
        DoDungDAO dao = new DoDungDAO();
        ArrayList<DoDung> listDD = dao.Read();
        ArrayList<ThongKeDoDung> list = new ArrayList<>();
        for (DoDung i : listDD){
            ThongKeDoDung tk = new ThongKeDoDung(i, "0");
            list.add(tk);
        }
        return list;
    }
    
}
