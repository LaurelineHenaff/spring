<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.Collection" %>
<%@ page import="fr.coursspring.activite1.livres.LivreModel" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>JSP - Activit� 1 - Mise � jour de livres</title>
  </head>
  <body>
    <a href="../livres" style="text-decoration: none; color: black;">Retour � la liste des livres</a><br /><br />
    Le livre a �t� mis � jour ! <br /><br>
    Nouvel enregistrement : <br><br>   
    ${livre.toString()} <br />
  </body>
</html>