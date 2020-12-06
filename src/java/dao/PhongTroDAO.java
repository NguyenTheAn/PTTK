/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.mongodb.MongoCommandException;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.DoDung;
import model.DoDungTrongPhong;
import model.PhongTro;
import org.bson.Document;

/**
 *
 * @author ligirk
 */
public class PhongTroDAO extends DAO{
    public PhongTroDAO(){
        super();
    }
    
    public ArrayList<PhongTro> timKiem(String key){
        ArrayList<PhongTro> list = this.Read();
        ArrayList<PhongTro> result = new ArrayList<>();
        for (PhongTro pt : list){
            String name = pt.getTen().toLowerCase();
            if (name.contains(key)){
                result.add(pt);
            }
        }
        return result;
    }
    
    public boolean Write(PhongTro pt){
        try{
            super.database.createCollection("PhongTro"); 
        } catch (MongoCommandException e){
        }
        try{
            Integer id = (int)(Math.random() * (9999 - 1000 + 1) + 1000);
            pt.setId(id.toString());
            MongoCollection<Document> collection = database.getCollection("PhongTro");
            Document doc = new Document("ID", pt.getId())
                                .append("Ten", pt.getTen())
                                .append("GiaPhong", pt.getGiaPhong())
                                .append("TienDien", pt.getTienDien())
                                .append("TienNuoc", pt.getTienNuoc())
                                .append("MoTa", pt.getMoTa());
            collection.insertOne(doc);
        } catch(Exception e){
            return false;
        }
        return true;
    }
    
    public ArrayList<PhongTro> Read(){
        MongoCollection<Document> collection = database.getCollection("PhongTro");
        // Getting the iterable object
        FindIterable<Document> iterDoc = collection.find();
        int i = 1;
        // Getting the iterator
        ArrayList<PhongTro> list = new ArrayList<>();
        for (Document doc : iterDoc) {
            String id = (String) doc.get("ID");
            String Ten = (String) doc.get("Ten");
            String GiaPhong = (String) doc.get("GiaPhong");
            String TienDien = (String) doc.get("TienDien");
            String TienNuoc = (String) doc.get("TienNuoc");
            String MoTa = (String) doc.get("MoTa");
            PhongTro pt = new PhongTro(id, Ten, GiaPhong, TienDien, TienNuoc, MoTa);
            list.add(pt);
            i++;
        }
        return list;
    }
    
}
