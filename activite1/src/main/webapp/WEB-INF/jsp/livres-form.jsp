<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
      
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>JSP - Activit� 1 - Formulaire</title>
  </head>
  <body>
    <a href="../livres" style="text-decoration: none; color: black;">Retour � la liste des livres</a><br /><br />
    <%
      String id = request.getParameter("id");
      if (id == null || id.isEmpty()) //Cr�ation
      {
        out.print("<form method='post' action='livres'>");
        out.print("Titre : <input type='text' name='titre' /><br><br>");
        out.print("Langue : <input type='text' name='langue' /><br><br>");
        out.print("<input type='submit' value='Cr�er' />");
        out.print("</form>");
      }
      else //mise � jour
      {
        String titre = request.getParameter("titre");
        String langue = request.getParameter("langue");
        out.print("<form method='post' action='livres-put/" + id +"'>");
        out.print("Titre : <input type='text' name='titre' value='"+ titre + "' /><br><br>");
        out.print("Langue : <input type='text' name='langue' value='" + langue + "' /><br><br>");
        out.print("<input type='submit' value='Modifier' />");
        out.print("</form>");
      }
    %>
  </body>
</html>
