<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="TP1 da disciplina Desenvolvimento Web com Java EE ministrada pelo professo Elberth Moraes">
    <meta name="author" content="Evan Rispoli">
    <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">
    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/sign-in/">
    <title>Cadastro de Dados</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
  </head>

  <body>
      <form class="form" action="cliente" method="post">
      <div class="text-center mb-4">
        <img class="mb-4" src="img/Infnet-Logo.png" alt="" width="80" height="80">
        <h1 class="h3 mb-3 font-weight-normal"> Cadastro de Clientes </h1>
        <p> Dynamic Web Project - Servlets </p>
      </div>

           
      <div class="form-group ">
          <label for="nome">Nome:</label>
          <input  type="text" class="form-control" id="nome" placeholder="Informe um nome" name="nome">
        </div>

        <div class="form-group">
          <label for="endereco">Endere�o:</label>
          <input  type="text" class="form-control" id="endereco" placeholder="Informe um endere�o" name="endereco">
        </div>

        <div class="form-group">
          <label for="telefone">Telefone:</label>
          <input  type="tel" class="form-control" id="telefone" placeholder="xx xxxx-xxxx" name="telefone"
            pattern="[0-9]{2} [0-9]{4}-[0-9]{4}">
        </div>

        <div class="form-group">
          <label for="email">Email:</label>
          <input  type="email" class="form-control" id="email" placeholder="Informe um email" name="email">
        </div>
        
        <button class="btn btn-lg btn-primary btn-block" type="submit">Cadastrar</button>
      <p class="mt-5 mb-3 text-muted text-center">&copy; Evan Rispoli</p>
    </form>
  </body>
  
</html>