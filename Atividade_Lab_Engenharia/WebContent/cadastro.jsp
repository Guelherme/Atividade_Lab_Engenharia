<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%-- Utilização do bootStrap --%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
<title>Formulario</title>
</head>
<body>
<div>
	<%-- garante que o layout fica alinhado --%>
	<div class="container">
		<h1>Formulario para Cadastro de usuario</h1>
	</div>

	<%-- Nome  --%>
	<%-- Post - é uma solicitação usada para alteração de banco de dados  --%>
	<form action="Dados.jsp" method="post">
		<div class="col-md-3">
			<label>Nome </label>
			<input type="text" name="nome" class="form-control" placeholder="Informe seu nome" id="campo1" required/>
		</div>
		 	<br>
		 	
		 	<div class="col-md-3">
            <label>User</label>
            <input type="text" name="nome" class="form-control" placeholder="Informe seu usuario" id="campo2" required/>
        </div>
             <br>
		 <div class="col-md-3">
			<label class="control-label" for="user_password2">Senha</label>
			<input class="password form-control" name="senha" placeholder="Informe sua senha" id="campo2" data-component="password-strength" data-monitor-id="password-strength-monitor" type="password" required>
			<div class="form-inline">
				<div class="input-group col-md-4 f-left">		
					<a class=" input-group-addon toggle-pass ico-eye" data-classtoggle="ico-eye,ico-eye-blocked" data-target="#user_password2" href="#"></a>
				</div>
			</div>
		</div>
		<br>
		 	
		 			 	
      	<%-- Telefone  --%>
      	<div class="col-md-3">
    		<label>Telefone</label>
    		<input type="text" name="telefone" class="form-control phone-ddd-mask" id="campo4" placeholder="Ex.: (00) 0000-0000"required>
  		</div>
		<br>      	
      	
      	<%-- Cidade  --%>
    	<div class="col-md-6">
      		<label>Cidade</label>
      		<input type="text" name="cidade" class="form-control" id="campo7" placeholder="Informe sua cidade" required>
    	</div>
    	<br>
    		
    	<%-- Estado  --%>
    	<div class="col-md-3">
      		<label>Estado</label>
      		<input type="text" name="estado" class="form-control" id="campo8" placeholder="Informe seu estados" required>
    	</div>
    	<br>
		
		
		<%-- Nacionalidade --%>
		<div class="col-md-1 mb-3">
			<label>Nacionalidade</label>
				<select  name="nacionalidade" id="campo9">
					<option>Brasil</option>
					<option>Argentina</option>
					<option>Russia</option>
					<option>Estados Unidos</option>
					<option>Mexico</option>
					<option>Cuba</option>
					<option>Venezuela</option>
				</select>
		</div> 
		<br/>
		
		<div class="form-group">
			<button type="submit" class="btn btn-secondary" name="cmd" value="adicionar">Adicionar</button>
		</div>
	</form>
</div>
</body>
</html>