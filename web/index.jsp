<%@page import="beans.Alumno"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <%!
Alumno a[]=new Alumno[10];
int cont=0;             
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formularios</title>
        <link rel="stylesheet" href="estilos.css">
    </head>
    
    <body>
        <h1>Registro de Alumnos</h1>
        
        
        <form action="index.jsp" method="POST">
            <table border="0" align="center">
                <thead>
                    <tr>
                        <th>Matricula</th>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>CVJ</th>
                        <th>DWI</th>
                        <th>ECDB</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="text" name="tfmatricula"   value=""></td>
                        <td><input type="text" name="tfnombre"      value=""></td>
                        <td><input type="text" name="tfapellidos"   value=""></td>
                        <td><input type="text" name="tfcvj"         value=""></td>
                        <td><input type="text" name="tfdwi"         value=""></td>
                        <td><input type="text" name="tfecdb"          value=""></td>
                        <td><input type="submit" name="btnregistrar" value="registrar"></td>
                        
                    </tr>
                </tbody>
            </table>
	
    </form>   
        <br>
        <br>
       <%
            
           if(request.getParameter("btnregistrar")!=null)
           {
               
           a[cont]=new Alumno();
           a[cont].setMatricula(request.getParameter("tfmatricula"));
           a[cont].setNombre(request.getParameter("tfnombre"));
           a[cont].setApellido(request.getParameter("tfapellidos"));
           a[cont].setCVJ(Integer.parseInt(request.getParameter("tfcvj")));
           a[cont].setDWI(Integer.parseInt(request.getParameter("tfdwi")));
           a[cont].setEcdb(Integer.parseInt(request.getParameter("tfecdb")));
           a[cont].Prom();
           cont++;
           }
           %>
                    
                <table  border="1" align="center">
           
            <thead>
                <tr>
                    <th>MATRICULA</th>
                    <th>NOMBRE</th>
                    <th>APELLIDO</th>
                    <th>CVJ</th>
                    <th>DWI</th>
                    <th>ECDB</th>
                    <th>PROMEDIO</th>
                </tr>
            </thead>
             <tbody>
                 
            <% for (int i=0; i<cont; i++){%>
           
                <tr>
                    <td><%=a[i].getMatricula()%></td>
                    <td><%=a[i].getNombre()%></td> 
                    <td><%=a[i].getApellido()%> </td> 
                    <td><%=a[i].getCVJ()%></td>
                    <td><%=a[i].getDWI()%></td>
                    <td><%=a[i].getEcdb()%></td>
                    <td><%=a[i].Prom()%></td>  
                </tr>
                
              <% } %>
               
            </tbody>
        </table> 
        
    </body>
</html>