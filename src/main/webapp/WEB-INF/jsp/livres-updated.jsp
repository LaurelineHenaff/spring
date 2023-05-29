<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.Collection" %>
<%@ page import="fr.coursspring.activite1.livres.LivreModel" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>JSP - Activité 1 - Mise à jour de livres</title>
  </head>
  <body>
    <a href="../livres" style="text-decoration: none; color: black;">Retour à la liste des livres</a><br /><br />
    Le livre a été mis à jour ! <br /><br>
    Nouvel enregistrement : <br><br>   
    ${livre.toString()} <br />
  </body>
</html>