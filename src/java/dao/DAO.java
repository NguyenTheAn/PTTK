/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.mongodb.MongoClient;
import com.mongodb.MongoCommandException;
import com.mongodb.MongoCredential;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.ThanhVien;
import org.bson.Document;
/**
 *
 * @author ligirk
 */
public class DAO {
    private MongoDatabase database;
    public DAO(){
        MongoClient mongo = new MongoClient( "localhost" , 27017 ); 
        MongoCredential credential;
	credential = MongoCredential.createCredential("admin", "", "".toCharArray());
        this.database = mongo.getDatabase("QLNT");
    }
    
    public void SaveUser(ThanhVien tv){
        try{
            this.database.createCollection("ThanhVien"); 
        } catch (MongoCommandException e){
        }
        
        MongoCollection<Document> collection = this.database.getCollection("ThanhVien");
        Document doc = new Document("ID", tv.getId())
                .append("Username", tv.getTenDangNhap())
                .append("Password", tv.getMatKhau())
                .append("Gender", tv.getGhiChu())
                .append("Phonenumber", tv.getSDT())
                .append("Discription", tv.getGhiChu())
                .append("Name", tv.getHoTen())
                .append("Addr", tv.getDiaChi())
                .append("DOB", tv.getNgaySinh());
        collection.insertOne(doc);
    }
    
    public ArrayList<ThanhVien> ReadUserInfo(){
        MongoCollection<Document> collection = database.getCollection("ThanhVien");
        // Getting the iterable object
        FindIterable<Document> iterDoc = collection.find();
        int i = 1;
        // Getting the iterator
        ArrayList<ThanhVien> UserInfo = new ArrayList<>();
        for (Document doc : iterDoc) {
            Integer id = (Integer) doc.get("ID");
            String TenDangNhap = (String) doc.get("Username");
            String MatKhau = (String) doc.get("Password");
            String GioiTinh = (String) doc.get("Gender");
            String SDT = (String) doc.get("Phonenumber");
            String ghiChu = (String) doc.get("Discription");
            String HoTen = (String) doc.get("Name");
            String DiaChi = (String) doc.get("Addr");
            String NgaySinh = (String) doc.get("DOB");
            ThanhVien tv = new ThanhVien(id, TenDangNhap, MatKhau, GioiTinh, SDT, ghiChu, HoTen, DiaChi, NgaySinh);
            UserInfo.add(tv);
            i++;
        }
        return UserInfo;
    }
}
