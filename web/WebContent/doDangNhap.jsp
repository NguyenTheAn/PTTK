<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>

<%
    String username = (String)request.getParameter("username");
    String password = (String)request.getParameter("password");
    ThanhVien tv = new ThanhVien(); 
    tv.setTenDangNhap(username);
    tv.setMatKhau(password);
    ThanhVienDAO dao = new ThanhVienDAO();
    boolean kq = dao.kiemTraDangNhap(tv);
     
    if(kq){
        session.setAttribute("chunhatro", tv);
        response.sendRedirect("chunhatro\\gdChinhChuNhaTro.jsp");
    }else{
        response.sendRedirect("gdDangNhap.jsp?err=fail");
    }
%>