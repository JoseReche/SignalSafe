/// @description Inserir descrição aqui

// Variáveis de movimento
var moveSpeed = 4; // Velocidade de movimento do jogador

// Atualização do movimento do jogador
if (keyboard_check(vk_right)) {
    x += moveSpeed; // Move para a direita
	sprite_index = spr_player_andando_direita
} else if (keyboard_check(vk_left)) {
    x -= moveSpeed; // Move para a esquerda
	sprite_index = spr_player_andando_esquerda
}else if (keyboard_check(vk_down)) {
    y += moveSpeed; // Move para baixo
	sprite_index = spr_player_andando_baixo
} else if (keyboard_check(vk_up)) {
    y -= moveSpeed; // Move para cima
	sprite_index = spr_player_andando_cima
} else {
    // Se nenhuma tecla de movimento estiver sendo pressionada,
    sprite_index = spr_player_parado_baixo;
}

