<%-- 
    Document   : bai_02
    Created on : Oct 16, 2024, 8:12:29 AM
    Author     : mygam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Diện tích- Chu vi hình chữ nhật</h1>
        <form action="bai_02.jsp" method="POST">
            <table border="0"> 
                <tr>
                    <td>Nhập chiều dài</td>
                    <td> <input type="text" name="chieudai" value="" required="" /></td>
                </tr>
                <tr>
                    <td>Nhập chiều rộng</td>
                    <td><input type="text" name="chieurong" value="" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Tính toán" />
                        <input type="reset" value="tiếp tục" />
                    </td>    
                </tr>
            </table>
        </form>
        <%
            String dai=request.getParameter("chieudai");
            String rong=request.getParameter("chieurong");
            if(dai!=null&&rong!=null){
                double d=Double.parseDouble(dai);
                double r=Double.parseDouble(rong);
                double dt=d*r;
                double cv=(d+r)*2;
        %>
                <hr>
                Diện tích: <%= dt %> <br>
                Chu vi: <%= cv %> <br>
        <%    
            }
        %>
    </body>
</html>
