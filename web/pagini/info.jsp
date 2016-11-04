<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page language="java" import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Text transmis ca parametru si afisat prin pagina info.jsp</h3>
        <c:out value="${param['detaliiInfo']}" />

        <p>
            <a href="../index.jsp">
            <img src="../icon/application.png" height="125" width="125"/> 
            Prima pagina
            </a>
        </p>
     
        <%
            HashMap<String,Integer> cosPagina = (HashMap<String,Integer>) session.getAttribute("cos");
            if (cosPagina!=null){            
                Set<String> keys = cosPagina.keySet();            
                for (String k:keys){
            %>
                <%= k+" ... "+cosPagina.get(k)+"<br/>" %>
            <%
                }
                out.println("<br/>");
            %>
                ${cos}
            <%
            } else { out.println("Obiectul cos din sesiune a fost sters dupa timpul alocat 3 secunde!");}
        %>

    </body>    
</html>
