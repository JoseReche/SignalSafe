/// @description Inserir descrição aqui

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

if(keyboard_check(vk_numpad7)){
	global.testey = global.testey -1
	//obj_dialogo.tutorial_andar--
}else if(keyboard_check(vk_numpad9)){
	global.testey = global.testey +1
	//obj_dialogo.tutorial_andar++
}else if(keyboard_check(vk_numpad8)){
	global.testex = global.testex -1
}else if(keyboard_check(vk_numpad5)){
	global.testex = global.testex +1
}else if(keyboard_check(vk_numpad1)){
	global.testeyy--
	//obj_dialogo.tutorial_andar--
}else if(keyboard_check(vk_numpad3)){
	global.testeyy++
	//obj_dialogo.tutorial_andar++
}else if(keyboard_check(vk_numpad2)){
	global.testexx--
}else if(keyboard_check(vk_numpad0)){
	global.testexx++
}