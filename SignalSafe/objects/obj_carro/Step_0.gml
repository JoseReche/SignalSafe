/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(x >= 129 && x <= 652){
	sprite_index = spr_carro_azul_andando_direita
	x+=1;	
}else if(y >= 62 && y <= 320){
		sprite_index = spr_carro_azul_andando_baixo
		y+=1;
}else if(x >= 652 && x <= 1326){
	sprite_index = spr_carro_azul_andando_direita
	x+=1;
}else if(y >= 320 && y <= 680){
	sprite_index = spr_carro_azul_andando_baixo
	y+=1;
}else if(x <= 1326 && x >= 66 && y = 680){
	sprite_index = spr_carro_azul_andando_esquerda
	x-=1;
}else{
	speed = 0
}