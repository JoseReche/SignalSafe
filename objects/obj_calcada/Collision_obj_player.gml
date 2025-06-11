/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(obj_player.mover_para_calcada&&pause){
	global.bateuCarro++
	pause=false
	alarm[0]=20
	}
obj_player.mover_para_calcada = false
obj_player.calcada_destino = id;
