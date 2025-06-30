/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(!rua&&(global.hotbar_spr[0]==2||(global.hotbar_spr[0]==1&&global.hotbar_spr[1]==0&&global.hotbar_spr[2]==0&&global.hotbar_spr[3]==0&&global.hotbar_spr[4]==0&&global.hotbar_spr[5]==0))){
	room_goto(onde);
	obj_player.x = player_x; // Muda posição dentro da mesma sala
	obj_player.y = player_y;
}else if(rua){
	room_goto(onde);
	obj_player.x = player_x; // Muda posição dentro da mesma sala
	obj_player.y = player_y;
}