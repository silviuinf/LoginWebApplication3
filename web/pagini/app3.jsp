<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" import="java.util.*"%>

<%
    HashMap<String,Integer> map = new HashMap<String,Integer>();
    map.put("primul obiect",1);
    map.put("al doilea",2);
    map.put("al treilea obiect",3);
    map.put("al patrulea",4);          
    session.setAttribute("cos", map);
    session.setMaxInactiveInterval(3);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>JSP Page</title>
    </head>
    <body>
        Am setat valori in session pentru obiectul cos cu setMaxInactiveInterval(3).<br/>
        Asteptati 3 secunde...
    </body>
</html>