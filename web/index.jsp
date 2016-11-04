<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina START</title>
    </head>
    <body>
        <%@include file="pagini/antet.jsp" %>
        <table>
            <tr><td>
                <form action="pagini/login.jsp" method="post">
                    <input type="submit" value="Aplicatia1 Orange"/>
                    <input type="hidden" name="linkapp" value="link1"/>
                    <input type="hidden" name="culoare" value="orange"/>
                    <img src="icon/umd_1.png" alt="Legatura la ... Aplicatia 1" height="125" width="125" title="Orange..."/>
                </form>                
                </td><td>
                <form action="pagini/login.jsp" method="post">
                    <input type="submit" value="Aplicatia2 Red     "/>
                    <input type="hidden" name="linkapp" value="link2"/>
                    <input type="hidden" name="culoare" value="red"/>
                    <img src="icon/umd_2.png" alt="Legatura la ... Aplicatia 2" height="125" width="125" title="Red..."/>
                </form>                
            </td></tr>
            <tr><td>
                <form action="pagini/login.jsp" method="post">
                    <input type="submit" value="Aplicatia3 Blue     "/>
                    <input type="hidden" name="linkapp" value="link3"/>
                    <input type="hidden" name="culoare" value="blue"/>
                    <img src="icon/umd_3.png" alt="Legatura la ... Aplicatia 3" height="125" width="125" title="Blue..."/>
                </form>                
                </td><td>
                <form action="pagini/login.jsp" method="post">
                    <input type="submit" value="Aplicatia4 Green  "/>
                    <input type="hidden" name="linkapp" value="link4"/>
                    <input type="hidden" name="culoare" value="green"/>
                    <img src="icon/umd_4.png" alt="Legatura la ... Aplicatia 4" height="125" width="125" title="Green..."/>
                </form>
                </td></tr>
            <tr><td><form action="pagini/dbInfo.jsp" method="post">
                        <input type="submit" value="Interogare db      "/>
                        <img src="icon/Logons.png" alt="db interogare" height="100" width="100"/>
                    </form>
                </td><td></td></tr>
        </table>
        <h3>completare informatii pentru github </h3>
    </body>
</html>
