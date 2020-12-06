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
public class DoDungTrongPhongDAO extends DAO{
    public DoDungTrongPhongDAO(){
        super();
    }
    public boolean Write(DoDungTrongPhong ddtp){
        try{
            super.database.createCollection("DoDungTrongPhong"); 
        } catch (MongoCommandException e){
        }
        try{
            Integer id = (int)(Math.random() * (9999 - 1000 + 1) + 1000);
            ddtp.setId(id.toString());
            MongoCollection<Document> collection = database.getCollection("DoDungTrongPhong");
            Document doc = new Document("ID", ddtp.getId())
                                .append("IdDoDung", ddtp.getIdDoDung())
                                .append("TrangThai", ddtp.getTrangThai())
                                .append("SoLuong", ddtp.getSoLuong())
                                .append("IdPhongTro", ddtp.getIdPhongTro());
            collection.insertOne(doc);
        } catch(Exception e){
            return false;
        }
        return true;
    }
    
    public ArrayList<DoDungTrongPhong> Read(){
        MongoCollection<Document> collection = database.getCollection("DoDungTrongPhong");
        // Getting the iterable object
        FindIterable<Document> iterDoc = collection.find();
        int i = 1;
        // Getting the iterator
        ArrayList<DoDungTrongPhong> list = new ArrayList<>();
        for (Document doc : iterDoc) {
            String id = (String) doc.get("ID");
            String IdDoDung = (String) doc.get("IdDoDung");
            String TrangThai = (String) doc.get("TrangThai");
            String SoLuong = (String) doc.get("SoLuong");
            String IdPhongTro = (String) doc.get("IdPhongTro");

            DoDungTrongPhong ddtp = new DoDungTrongPhong(id, IdDoDung, TrangThai, SoLuong, IdPhongTro);
            list.add(ddtp);
            i++;
        }
        return list;
    }
    
    public ArrayList<DoDungTrongPhong> getByIdPhong(String IdPhongTro){
        ArrayList<DoDungTrongPhong> ddtp = this.Read();
        ArrayList<DoDungTrongPhong> result = new ArrayList<>();
        for (DoDungTrongPhong i:ddtp){
            if (IdPhongTro.equals(i.getIdPhongTro())){
                result.add(i);
            }
        }
        return result;
    }
    
}
