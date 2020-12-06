<%-- 
    Document   : gdTimKiemPhong
    Created on : Dec 6, 2020, 8:48:53 PM
    Author     : ligirk
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giao Dien Tim Kiem Phong</title>
        <%@include file ="../header.jsp" %>
    </head>
    <body>
        <form name="timkiemphong" action="doTimKiemPhong.jsp" method="post">
            <table border="0">
                <tr>
                    <td>Tu Khoa: </td>
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
