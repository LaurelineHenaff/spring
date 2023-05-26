<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.Collection" %>
<%@ page import="fr.coursspring.activite1.livres.LivreModel" %>
<%@ page import="org.springframework.web.bind.annotation.RequestMapping" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP - Activité 1 - Livres</title>
</head>
<body>
<a href="index" style="text-decoration: none; color: black;">Accueil</a><br /><br />
Les livres sont : <br><br>
<%
  Collection<LivreModel> livres = (Collection<LivreModel>)request.getAttribute("livres");
  out.print("<table style='border='1px solid black;''>");
  out.print("<tr><th>Id</th><th>Titre</th><th>Langue</th><th></th></tr>");
  for (LivreModel l : livres){
    out.print("<tr>");
    
    // Afficher le livre
    out.print("<td style='text-align='center;''>" + l.getId() + "</td>");
    out.print("<td style='align='center; width='200px;''>" + l.getTitre() + "</td>");
    out.print("<td style='text-align='center;''>" + l.getLangue() + "</td>");
    
    // Bouton modifier
    out.print("<form method=GET action='livres-form'>");
    out.print("<td><input type='hidden' name='id' value="+ l.getId() +" />");
    out.print("<input type='hidden' name='titre' value="+ l.getTitre() +" />");
    out.print("<input type='hidden' name='langue' value="+ l.getLangue() +" /></td>");
    out.print("<td><input type='submit' value='Modifier' /></td>");
    out.print("</form>");
    
    // Bouton effacer
    out.print("<td>");
    out.print("<form method=POST action='livres-delete/" + l.getId() + "'>");
    out.print("<input type='submit' value='Effacer' />");
    out.print("</form></td>");
  };
  out.print("<table>");
%>
<br />
<form method='post' action='livres-form'>
  <input type='submit' value='Ajouter livre' />
</form>
</body>
</html>