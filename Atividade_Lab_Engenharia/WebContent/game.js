const player1 = "X";
const player2 = "O";
var playTime = player1;
var gameOver = false;

inicializarEspacos();
atualizaMostrador();



function atualizaMostrador(){
	if(gameOver){
		return;
	}
	if(playTime == player1){
		 
		var player = document.querySelectorAll("div#mostrador img")[0];
		player.setAttribute("src", "img/x.png");
		
	}else{
		var player = document.querySelectorAll("div#mostrador img")[0];
		player.setAttribute("src", "img/O.jpg");
		
	}
	
}

function inicializarEspacos(){
	var espaco1 = document.getElementById("a1");
	espaco1.addEventListener("click", function(){
		let img1 = document.createElement("img");
		if(playTime == player1){
			
			
			img1.setAttribute("src", "img/x.png");
			espaco1.appendChild(img1);
			playTime = player2;
			atualizaMostrador();
	
		}else{
			img1.setAttribute("src", "img/O.jpg");
			espaco1.appendChild(img1);
			playTime = player1;
			atualizaMostrador();
		}
		
		
		
	});
	
	
	
	
	
	
	
	
	
	
	
	
	/*var espacos = document.getElementsByClassName("espaco");
		for (var i = 0; i < espacos.lenght; i++){
			
			espacos[i].addEventListener("click", function(){
			
				if(gameOver){return;}
			
					if(this.getElementsByTagName("img").length == 0){
						
						if(playTime == player1){
							
							
							this.innerHTML = "<img src='img/x.png'>";
							this.setAttribute("jogada", player1);
							playTime = player2;
					
						}else{
							this.innerHTML = "<img src='img/O.jpg'>";
							this.setAttribute("jogada", player2);
							playTime = player1;
						}
						
						
						atualizaMostrador();
					}
			});	
		}*/
		
	
}

