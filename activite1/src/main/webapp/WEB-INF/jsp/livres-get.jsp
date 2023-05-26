<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="fr.coursspring.activite1.livres.LivreModel" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>JSP - Activité 1 - Recherche de livres</title>
  </head>
  <body>
    <a href="index" style="text-decoration: none; color: black;">Accueil</a><br /><br />
    Le livre cherché est : ${livre.toString()} <br />
  </body>
</html>