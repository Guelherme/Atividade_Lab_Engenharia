<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
<title>Login</title>
</head>
<body>
<div>
    <%-- garante que o layout fica alinhado --%>
    <div class="container">
        <h1>Seu login</h1>
    </div>

    <%-- Post - é uma solicitação usada para alteração de banco de dados  --%>
    <form action="TelaLogin.jsp" method="post">
        <div class="col-md-3">
            <%-- Login  --%>
            <label>Login </label>
            <input type="text" name="usuario" class="form-control" placeholder="Informe seu usuario" id="campo1" required/>
        </div>
             <br>

          <%-- Senha  --%>
          <div class="col-md-3">
            <label>Senha</label>
            <input type="text" name="senha" class="form-control" id="campo4" placeholder="Informe sua senha"required>
          </div>
          <br>
          <div>
              <button type="submit" class="btn btn-primary" name="cmd" value="adicionar">Entrar</button>
              
              <button type="submit" class="btn btn-secondary" name="cmd" value="pesquisar">Esqueceu a Senha</button>
          </div>
        <br>
    </form>
</div>

</body>
</html>