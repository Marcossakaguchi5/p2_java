<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <title>Livros</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet" />
   
  </head>
  <body>
    <div class="container">
      <h1>Livros</h1>

      <table class="table">
        <tr>
          <th>Id</th>
          <th>Titulo</th>
          <th>ano de lançamento</th>
        </tr>
        <c:forEach var="item" items="${jogos}">
          <tr>
            <td>${item.id}</td>
            <td>${item.titulo}</td>
            <td>${item.anoDeLancamento}</td>
            <td></td>
          </tr>
        </c:forEach>
      </table>
    </div>
  </body>
</html>
