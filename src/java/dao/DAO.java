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
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Base64;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.ThanhVien;
import org.bson.Document;
/**
 *
 * @author ligirk
 */
public class DAO {
    protected MongoDatabase database;
    public DAO(){
        MongoClient mongo = new MongoClient( "localhost" , 27017 ); 
        MongoCredential credential;
	credential = MongoCredential.createCredential("admin", "", "".toCharArray());
        this.database = mongo.getDatabase("QLNT");
    }
}
