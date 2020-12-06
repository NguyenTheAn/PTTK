<%-- 
    Document   : doTimKiem
    Created on : Dec 6, 2020, 2:56:09 PM
    Author     : ligirk
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>

<%
    String key = (String)request.getParameter("key");
    String job = (String)request.getParameter("job");
    DoDungDAO dao = new DoDungDAO();
    ArrayList<DoDung> list = dao.timKiem(key.toLowerCase());
    session.setAttribute("kqtimkiem", list);
    if (job.equals("modify")){
        response.sendRedirect("gdChonDoDung.jsp");
    }
    else if (job.equals("delete")){
        response.sendRedirect("gdXoaDoDung.jsp");
    }
    
%>
