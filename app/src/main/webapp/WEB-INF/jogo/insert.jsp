<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Novo Jogo</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" >
        <link rel="icon" href="../../images/folha.png" sizes="16x16" type="image/png">
    </head>
    <body>
        <div class="container">
            <h1>novo Jogo</h1>
            <a href="/jogo/list" class="btn btn-primary">voltar</a>
            <form action="/jogo/insert" method="post">
                    <div class="form-group">
                        <label for="titulo">titulo</label>
                        <input type="text" name="titulo" class="form-control" /> 
                        <label for="anoDeLancamento">ano De Lançamento</label>
                        <input type="text" name="anoDeLancamento" class="form-control" /> 

                    </div>
                    <br/>
                    <button type="submit" class="btn btn-success"> salvar</button>
            </form>
            <img src="../../images/3.gif" width="600px">
        </div>
   
      
        
    </body>
</html>

