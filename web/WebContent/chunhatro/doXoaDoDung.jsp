<%-- 
    Document   : doXoaDoDung
    Created on : Dec 6, 2020, 5:32:39 PM
    Author     : ligirk
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>

<%
    Integer iddd = Integer.parseInt((String) request.getParameter("iddd"));
    ArrayList<DoDung> listDoDung = (ArrayList<DoDung>) session.getAttribute("kqtimkiem");
    DoDung dd = listDoDung.get(iddd);
    listDoDung.remove(dd);
    DoDungDAO dao = new DoDungDAO();
    boolean kq = dao.Delete(dd);
    
    if(kq){
        response.sendRedirect("gdXoaDoDung.jsp?err=success");
    }else{
        response.sendRedirect("gdXoaDoDung.jsp?err=fail");
    }
    
%>