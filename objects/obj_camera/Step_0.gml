/// @description Inserir descrição aqui
if(!audio_is_playing(Fundo))audio_play_sound(Fundo,0, false);
// verificando se o player existe
if(instance_exists(obj_player)){
	alvo = obj_player;
}
playerx = obj_player.x
playery = obj_player.y

//seguindo o Player
x = lerp(x,alvo.x,0.1);
y = lerp(y,alvo.y,0.1);

//pegando os valores da camera
var _larg_camera = camera_get_view_width(view_camera[0]);
var _alt_camera = camera_get_view_height(view_camera[0]);

var _cam_x = x - _larg_camera/2;
var _cam_y = y - _alt_camera/2;

cam_x = clamp(_cam_x,0,room_width - _larg_camera);
cam_y = clamp(_cam_y,0,room_height - _alt_camera);


//alterando a posição da camera
camera_set_view_pos(view_camera[0],cam_x,cam_y);

if(keyboard_check(vk_numpad8)){
	global.testey = global.testey -1
	//obj_dialogo.tutorial_andar--
}else if(keyboard_check(vk_numpad2)){
	global.testey = global.testey +1
	//obj_dialogo.tutorial_andar++
}else if(keyboard_check(vk_numpad4)){
	global.testex = global.testex -1
}else if(keyboard_check(vk_numpad6)){
	global.testex = global.testex +1
}else if(keyboard_check(ord("I"))){
	global.testeyy = global.testeyy -0.01
	//obj_dialogo.tutorial_andar--
}else if(keyboard_check(ord("M"))){
	global.testeyy = global.testeyy +0.01
	//obj_dialogo.tutorial_andar++
}else if(keyboard_check(ord("J"))){
	global.testexx = global.testexx -0.01
}else if(keyboard_check(ord("L"))){
	global.testexx = global.testexx +0.01
}

if(global.fala==""){
	audio_stop_sound(Fala_guarda_1);
	audio_stop_sound(segunda_fala_guarda_2);
    audio_stop_sound(Primeira_fala_guarda_2);
    audio_stop_sound(Primeira_fala_mae);
    audio_stop_sound(Segunda_fala_mae);
    audio_stop_sound(Primeira_fala_atendente);
    audio_stop_sound(Segunda_fala_atendente);
    
}
