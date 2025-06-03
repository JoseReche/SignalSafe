// Define a velocidade de movimento do jogador
var moveSpeed = 4;
var _parede1 = instance_place(x+5, y+5, obj_parede);
var _parede2 = instance_place(x-5, y-5, obj_parede);
var _parede = true;

if (_parede1 != noone && _parede1.passagem == false) {
    _parede = false;
} 
if (_parede2 != noone && _parede2.passagem == false) {
    _parede = false;
}

// Movimento automático para calçada
if (mover_para_calcada) {
    
    // Move em direção à calçada
    if (calcada_destino != noone) {
        var dx = calcada_destino.x - x;
        var dy = calcada_destino.y - y;
        var dir = point_direction(x, y, calcada_destino.x+63, calcada_destino.y+5);
        var mx = lengthdir_x(2, dir);
        var my = lengthdir_y(2, dir);

        x += mx;
        y += my;

        // Pode ajustar o sprite se quiser:
        if (abs(mx) > abs(my)) {
            sprite_index = mx > 0 ? spr_player_andando_direita : spr_player_andando_esquerda;
        } else {
            sprite_index = my > 0 ? spr_player_andando_baixo : spr_player_andando_cima;
        }
    }

} else if (!global.dialogoPausado) {
    
    // Movimento manual normal
    if (keyboard_check(ord("W"))) {
        y -= moveSpeed;
        sprite_index = spr_player_andando_cima;

        if(place_meeting(x,y,obj_carro_direito) || place_meeting(x,y,obj_carro_esquerdo)){
            y += moveSpeed;
        }
        if (place_meeting(x,y,obj_parede) && _parede == true){
            y += moveSpeed;
        }

    } else if (keyboard_check(ord("S"))) {
        y += moveSpeed;
        sprite_index = spr_player_andando_baixo;

        if (place_meeting(x,y,obj_carro_direito) || place_meeting(x,y,obj_carro_esquerdo)){
            y -= moveSpeed;
        }
        if (place_meeting(x,y,obj_parede) && _parede == true){
            y -= moveSpeed;
        }

    } else if (keyboard_check(ord("A"))) {
        x -= moveSpeed;
        sprite_index = spr_player_andando_esquerda;

        if (place_meeting(x,y,obj_carro_direito) || place_meeting(x,y,obj_carro_esquerdo)){
            x += moveSpeed;
        }
        if (place_meeting(x,y,obj_parede) && _parede == true){
            x += moveSpeed;
        }

    } else if (keyboard_check(ord("D"))) {
        x += moveSpeed;
        sprite_index = spr_player_andando_direita;

        if (place_meeting(x,y,obj_carro_direito) || place_meeting(x,y,obj_carro_esquerdo)){
            x -= moveSpeed;
        }
        if (place_meeting(x,y,obj_parede) && _parede == true){
            x -= moveSpeed;
        }

    } else {
        sprite_index = spr_player_parado_baixo;
    }
}
