/// @description Inserir descrição aqui

// verificando se o player existe
if(instance_exists(obj_player)){
	alvo = obj_player;
}

//seguindo o Player
x = lerp(x,alvo.x,0.1);
y = lerp(y,alvo.y,0.1);

//pegando os valores da camera
var _larg_camera = camera_get_view_width(view_camera[0]);
var _alt_camera = camera_get_view_height(view_camera[0]);

var _cam_x = x - _larg_camera/2;
var _cam_y = y - _alt_camera/2;

_cam_x = clamp(_cam_x,0,room_width - _larg_camera);
_cam_y = clamp(_cam_y,0,room_height - _alt_camera);

//alterando a posição da camera
camera_set_view_pos(view_camera[0],_cam_x,_cam_y);
