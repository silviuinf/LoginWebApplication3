<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login User Page</title>
    </head>
    <body>
    <%-- <img src="../icon/Logons.png" alt="user-password : test-test" height="70" width="70" />  --%>
        <form method="post" action="login.jsp">                
            <table style="background-color: ${param['culoare']}">
                <th>Aplicatia ${param['linkapp']}</th><th></th>
                <tr><td>Utilizator</td><td>                                     
                    <input type="text"     name="nameUser" value="Early CentralComp"/></td></tr>   
                <tr><td>Parola</td><td>                                         
                    <input type="password" name="passUser" value="CA"/></td></tr>
                <tr><td></td><td>  
                    <input type="hidden"   name="locatieUser" value="Bucuresti" />
                    <input type="hidden"   name="culoare"  value="${param['culoare']}"/>
                    <input type="hidden"   name="linkapp"  value="${param['linkapp']}"/>
                    <input type="submit"   name="verificL" value="login"/>
                </td></tr>
            </table>
        </form>
    
    <c:remove var="login"/>
    <c:set var="linkapp" value="${param['linkapp']}" />
                                  
    <jsp:useBean scope="session"  class="ro.webapp.login.UserLogin" id="login"/>
    <jsp:setProperty name="login" property="*" />
                <%
                    if (login.getNameUser()!=null) {
                        if (login.getPassUser()!=null) {                        
                            out.println("Hello, "+login.getNameUser());
                            out.println(" <br/>from "+login.getLocatieUser());
                            if (login.getNameUser().equalsIgnoreCase("test")) {
                                if (login.getPassUser().equalsIgnoreCase("test")) {                            
                                    out.println("<h4>v.1.0.1_test [");
                %>
                                    ${pageContext.request.serverName}:${pageContext.request.serverPort}
                <%
                                    out.println("]</h4>");
                %>                
                
                <c:choose>
                    <c:when test="${linkapp=='link1'}">
                        <jsp:forward page="app1.jsp">
                            <jsp:param name="culoare" value="${param['culoare']}"/>
                        </jsp:forward>                                                            
                    </c:when>
                    <c:when test="${linkapp=='link2'}">
                        <jsp:forward page="app2.jsp">
                            <jsp:param name="culoare" value="${param['culoare']}"/>
                        </jsp:forward>                                                                                
                    </c:when>
                    <c:when test="${linkapp=='link3'}">
                        <jsp:forward page="app3.jsp">
                            <jsp:param name="culoare" value="${param['culoare']}"/>
                        </jsp:forward>                                                                                
                    </c:when>
                    <c:otherwise>
                        Alta APLICATIE nu e gata !<br>
                        <%
                        out.println("<a href=\"../index.jsp\" >"
                                + "<img src=\"../icon/application.png\" height=\"125\" width=\"125\"/> prima pagina"
                                + "</a>");                        
                        %>
                    </c:otherwise>
                </c:choose>                
                <%
                                            } else { out.println("<hr>Parola incorecta. Reintroduceti : test !"); } 
                            } else { out.println("<hr>Numele incorect. Reintroduceti : test !"); }  
                        } else { out.println("Date incomplete. Reintroduceti datele !");} 
                    }                   
                %>
    </body>
</html>
