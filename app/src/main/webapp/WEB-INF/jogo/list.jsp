<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <title>Jogos</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="icon" href="../../images/folha.png" sizes="16x16" type="image/png">
  </head>
  <body>
    <div class="container">
      <h1>jogos</h1>
      <a href="/jogo/insert" class="btn btn-primary">Novo Jogo</a>
      <table class="table">
        <tr>
          <th>Id</th>
          <th>Titulo</th>
          <th>ano de lançamento</th>
          <th>&nbsp;</th>
        </tr>
        <c:forEach var="item" items="${jogos}">
          <tr>
            <td>${item.id}</td>
            <td>${item.titulo}</td>
            <td>${item.anoDeLancamento}</td>
            <td>
              <a href="/jogo/update?id=${item.id}" class="btn btn-warning">Editar</a>
              <a href="/jogo/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
          </td>
          </tr>
        </c:forEach>
      </table>
      <img src='https://user-images.githubusercontent.com/5713670/87202985-820dcb80-c2b6-11ea-9f56-7ec461c497c3.gif' width='200'>
    </div>
  </body>
</html>
