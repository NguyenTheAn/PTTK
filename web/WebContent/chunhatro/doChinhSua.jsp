<%-- 
    Document   : doNhapDoDung
    Created on : Dec 6, 2020, 1:25:39 PM
    Author     : ligirk
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>

<%
    Integer iddd = Integer.parseInt((String) request.getParameter("iddd"));
    ArrayList<DoDung> listDoDung = (ArrayList<DoDung>) session.getAttribute("kqtimkiem");
    DoDung dd = listDoDung.get(iddd);
    String id = (String)request.getParameter("ID");
    String name = (String)request.getParameter("name");
    String price = (String)request.getParameter("price");
    String number = (String)request.getParameter("number");
    String discription = (String)request.getParameter("discription");
    dd.setName(name);
    dd.setId(id);
    dd.setDonGia(price);
    dd.setTongSoLuong(number);
    dd.setMoTa(discription);
    listDoDung.set(iddd, dd);
    DoDungDAO dao = new DoDungDAO();
    boolean kq = dao.SaveDoDung(dd);

    if(kq){
        response.sendRedirect("gdChinhSuaDoDung.jsp?err=success&&iddd=" + iddd.toString());
    }else{
        response.sendRedirect("gdChinhSuaDoDung.jsp?err=fail&&iddd=" + iddd.toString());
    }
    
%>
