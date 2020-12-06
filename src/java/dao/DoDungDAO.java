/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.mongodb.MongoCommandException;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.model.Filters;
import java.util.ArrayList;
import model.DoDung;
import model.ThanhVien;
import org.bson.Document;

/**
 *
 * @author ligirk
 */
public class DoDungDAO extends DAO{
    public DoDungDAO(){
        super();
    }
    
    public boolean SaveDoDung(DoDung dd){
        try{
            super.database.createCollection("DoDung"); 
        } catch (MongoCommandException e){
        }
        
        try{
            MongoCollection<Document> collection = this.database.getCollection("DoDung");
            if (dd.getId() == null){
                Integer id = (int)(Math.random() * (9999 - 1000 + 1) + 1000);
                dd.setId(id.toString());
                Document doc = new Document("ID", dd.getId())
                                    .append("Name", dd.getName())
                                    .append("Price", dd.getDonGia())
                                    .append("Number", dd.getTongSoLuong())
                                    .append("discription", dd.getMoTa());
                collection.insertOne(doc);
            }
            else{
                Document query = new Document();
                query.append("ID",dd.getId());
                Document setData = new Document("ID", dd.getId())
                                    .append("Name", dd.getName())
                                    .append("Price", dd.getDonGia())
                                    .append("Number", dd.getTongSoLuong())
                                    .append("discription", dd.getMoTa());
                Document update = new Document();
                update.append("$set", setData);
                //To update single Document  
                collection.updateOne(query, update);
            }
        } catch (Exception e){
            return false;
        }
        return true;
    }
    
    public boolean Delete(DoDung dd){
        try{
            MongoCollection<Document> collection = this.database.getCollection("DoDung");
            collection.deleteOne(Filters.eq("ID", dd.getId())); 
        } catch(Exception e){
            return false;
        }
        return true;
        
    }
    
    public ArrayList<DoDung> timKiem(String key){
        ArrayList<DoDung> list = this.Read();
        ArrayList<DoDung> result = new ArrayList<>();
        for (DoDung dd : list){
            String name = dd.getName().toLowerCase();
            if (name.contains(key)){
                result.add(dd);
            }
        }
        return result;
    }
    
    public ArrayList<DoDung> Read(){
        MongoCollection<Document> collection = database.getCollection("DoDung");
        // Getting the iterable object
        FindIterable<Document> iterDoc = collection.find();
        int i = 1;
        // Getting the iterator
        ArrayList<DoDung> list = new ArrayList<>();
        for (Document doc : iterDoc) {
            String id = (String) doc.get("ID");
            String Name = (String) doc.get("Name");
            String Price = (String) doc.get("Price");
            String Number = (String) doc.get("Number");
            String discription = (String) doc.get("discription");
            DoDung dd = new DoDung(id, Name, Price, Number, discription);
            list.add(dd);
            i++;
        }
        return list;
    }
    
    public DoDung getDoDungById(String IdDoDung){
        ArrayList<DoDung> list = this.Read();
        ArrayList<DoDung> result = new ArrayList<>();
        for (DoDung dd : list){
            String ID = dd.getId();
            if (ID.equals(IdDoDung)){
                return dd;
            }
        }
        return null;
    }
}
