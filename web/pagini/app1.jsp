<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><font color="${param['culoare']}"> Hello,</font></h1>
        utilizator :<jsp:getProperty name="login" property="nameUser"/><br/>
        locatia :${login['locatieUser']}<br/>
        culoare aleasa :${param['culoare']}<br/>
        parola :${login.getPassUser()}<hr/>
        <img src="../icon/application.png" height="125" width="125" title="Aplicatii..."/>
        
        <c:set var="userLogin"   value="${login.getNameUser()}"/>
        <c:set var="userLocatie" value="${login['locatieUser']}"/>
        <c:set var="userCuloare" value="${param['culoare']}"/>
        
        <hr/>Detalii salvate : 
        <ul><li><c:out value="${userLogin}"/>  </li> 
            <li><c:out value="${userLocatie}"/></li>
            <li><c:out value="${userCuloare}"/></li>            
        </ul>
            <c:if test="${userCuloare=='orange'}" >
                A fost aleasa culoarea ORANGE pe ecranul de logare !
            </c:if>
            <c:if test="${userCuloare=='red'}">
                A fost aleasa o alta culoare RED !
            </c:if>
        <c:remove var="userCuloare"/>
    </body>
</html>