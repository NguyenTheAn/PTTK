<%-- 
    Document   : gdTimKiemDoDung
    Created on : Dec 6, 2020, 2:49:49 PM
    Author     : ligirk
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giao Dien Tim Kiem Do Dung</title>
        <%@include file ="../header.jsp" %>
    </head>
    <body>
        <form name="timkiemdodung" action="doTimKiem.jsp?job=<%=(String)request.getParameter("job")%>" method="post">
            <table border="0">
                <tr>
                    <td>Từ Khóa: </td>
                    <td><input type="text" name="key" id="key" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Tìm" />
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
