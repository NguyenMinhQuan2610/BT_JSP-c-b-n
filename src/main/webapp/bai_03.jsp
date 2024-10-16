<%-- 
    Document   : bai_03
    Created on : Oct 16, 2024, 8:25:22 AM
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
        <h1>Diện tích - Chu vi hình tròn</h1>
        <form action="bai_03.jsp" method="POST">
            Hãy nhập bán kính: <input type="text" name="bankinh" value="" /> <br>
            <input type="submit" value="Tính toán" />
            <input type="reset" value="Tiếp tục" />
        </form>
        <%
            String bankinh=request.getParameter("bankinh");
            if(bankinh!=null){
                double bk=Double.parseDouble(bankinh);
                double cv=Math.PI*2*bk;
                double dt=Math.PI*bk*bk;
         %>
             <hr>
            Diện tích: <%= dt %> <br>
            Chu vi: <%= cv %> <br>
        <%
            }
        %>
    </body>
</html>
