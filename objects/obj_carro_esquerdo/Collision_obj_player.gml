/// @description Inserir descrição aqui

var player = instance_nearest(x, y, obj_player);
if(!global.passareala){
	player.mover_para_calcada = true;
	global.bateuCarro++
}
