// Obtém a direção do mouse em relação à posição do jogador

// Define a velocidade de movimento do jogador
var moveSpeed = 4;

// Verifica as teclas pressionadas para atualizar a velocidade do jogador
if (keyboard_check(ord("W"))) {
    y -= moveSpeed;
	sprite_index = spr_player_andando_cima;
	if (place_meeting(x,y,obj_parede)){
	 	y += moveSpeed;
	}
}else if (keyboard_check(ord("S"))) {
    y += moveSpeed;
	sprite_index = spr_player_andando_baixo;
	if (place_meeting(x,y,obj_parede)){
	 	y -= moveSpeed;
	}
}else if (keyboard_check(ord("A"))) {
    x -= moveSpeed;
	sprite_index = spr_player_andando_esquerda;
	if (place_meeting(x,y,obj_parede)){
	 	x += moveSpeed;
	}
}else if (keyboard_check(ord("D"))) {
    x += moveSpeed;
	sprite_index = spr_player_andando_direita;
	if (place_meeting(x,y,obj_parede)){
	 	x -= moveSpeed;
	}
}else{
	sprite_index = spr_player_parado_baixo;
}
