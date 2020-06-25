<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Jogo da Velha</title>
	
	<style type="text/css">

		#mostrador{
			margin: auto;
			margin-top: 40px;
			width: 252px;
			height: 80px;
		}

		.espaco{
			width: 80px;
			height: 60px;
			border: 2px solid #000;
			float: left; 
			text-align: center;
			padding-top: 20px;
		}

		.tabuleiro{
			width: 252px;
			height: 252px;
			margin: auto;
		}

	</style>
</head>
<body>
	<div id="mostrador">
		<p style="float: left; margin-right: 10px"> Vez do Jogador: </p>
		<img src="" border="0" height="50">
	</div>	

		<div class="tabuleiro">
			<div id="a1" class="espaco" jogada=""></div>
			<div id="a2" class="espaco" jogada=""> </div>
			<div id="a3" class="espaco" jogada=""> </div>

			<div id="b1" class="espaco" jogada=""> </div>
			<div id="b2" class="espaco" jogada=""> </div>
			<div id="b3" class="espaco" jogada=""> </div>

			<div id="c1" class="espaco" jogada=""> </div>
			<div id="c2" class="espaco" jogada=""> </div>
			<div id="c3" class="espaco" jogada=""> </div>
		 </div>




<script type="text/javascript" src="game.js"></script>

</body>