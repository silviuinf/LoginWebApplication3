<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <h1>Application 2</h1>
    Informatii din HEADER<hr>
    <c:forEach var="head" items="${header}">
        ${head.key} : ${head.value}<br/>
    </c:forEach>
    
        <hr/>
    <h3>Informatii privind variabila REFERER din HEADER delimitata prin /</h3>
    <c:forTokens var="i" items="${header.referer}" delims="/">
        ${i}<br/>
    </c:forTokens>
    
        <hr/>
    <c:import url="info.jsp">
        <c:param name="detaliiInfo" 
                 value="nsg fhgr ehgfq hrgh fghjgfwerhjgfwrjqgqer wgfyuewyqfgweqfweq"/>
    </c:import>
    <c:url var="linkInfo" value="info.jsp">
        <c:param name="detaliiInfo" value="alte informatii transmise"/>
    </c:url>
    
    <h3>Legatura catre info.jsp cu transmitere de parametrii (daca se foloseste GET): </h3>
    ${linkInfo} <a href="${linkInfo}">link</a>
    </body>    
</html>
