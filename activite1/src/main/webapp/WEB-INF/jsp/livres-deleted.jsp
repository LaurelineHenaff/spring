<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.Collection" %>
<%@ page import="fr.coursspring.activite1.livres.LivreModel" %>
      
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>JSP - Activit� 1 - Suppression de livres</title>
  </head>
  <body>
    <a href="../livres" style="text-decoration: none; color: black;">Retour � la liste des livres</a><br /><br />
    Le livre ${livre.getTitre()} a �t� effac� ! <br />
  </body>
</html>