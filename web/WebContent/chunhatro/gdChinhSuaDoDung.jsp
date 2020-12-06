<%-- 
    Document   : gdChinhSuaDoDung
    Created on : Dec 6, 2020, 3:56:53 PM
    Author     : ligirk
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giao Dien Chinh Sua Do Dung</title>
        <%@include file ="../header.jsp" %>
    </head>
    <%
        Integer iddd = Integer.parseInt((String) request.getParameter("iddd"));
        ArrayList<DoDung> listDoDung = (ArrayList<DoDung>) session.getAttribute("kqtimkiem");
        DoDung dd = listDoDung.get(iddd);
    %>
    <body>
        <h2> Chỉnh Sửa Đồ Dùng </h2>
        <form name="chinhsuadodung" action="doChinhSua.jsp?iddd=<%=iddd%>" method="post">
            <table border="0">
                <tr>
                    <td>ID: </td>
                    <td><input type="text" name="ID" id="ID" required readonly="readonly" value="<%=dd.getId()%>"/></td>
                </tr>
                <tr>
                    <td>Tên:</td>
                    <td><input type="text" name="name" id="name" required value="<%=dd.getName()%>"/></td>
                </tr>
                <tr>
                    <td>Đơn giá:</td>
                    <td><input type="text" name="price" id="price"
                        required value="<%=dd.getDonGia()%>" /></td>
                </tr>
                <tr>
                    <td>Tổng số lượng:</td>
                    <td><input type="text" name="number" id="number"
                        required value="<%=dd.getTongSoLuong()%>" /></td>
                </tr>
                <tr>
                    <td>Mô tả:</td>
                    <td><input type="text" name="discription" id="discription"
                               value="<%=dd.getMoTa()%>" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Lưu" />
                        <button onclick="history.back()">Quay Lại</button>
                    </td>
                </tr>
            </table>
        </form>
        <%
           if(request.getParameter("err") !=null && request.getParameter("err").equalsIgnoreCase("success")){
                %> <h4>Chỉnh sửa thành công!</h4><%
            }else if(request.getParameter("err") !=null && request.getParameter("err").equalsIgnoreCase("fail")){
                %> <h4 color="red">Lỗi chỉnh sửa, liên hệ với admin để biết thêm thông tin!</h4><%
            }
       %>
    </body>
</html>
