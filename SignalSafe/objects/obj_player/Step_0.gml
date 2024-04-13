var moveSpeed = 4; // Velocidade de movimento do jogador
var moveHorizontal = 0; // Movimento horizontal do jogador
var moveVertical = 0; // Movimento vertical do jogador

// Verifica as teclas de movimento horizontal
if (keyboard_check(vk_right)) {
    moveHorizontal = moveSpeed; // Move para a direita
	sprite_index = spr_player_andando_direita;
} else if (keyboard_check(vk_left)) {
    moveHorizontal = -moveSpeed; // Move para a esquerda
	sprite_index = spr_player_andando_esquerda;
} else {
    moveHorizontal = 0; // Nenhuma tecla de movimento horizontal pressionada
}

// Verifica as teclas de movimento vertical
if (keyboard_check(vk_down)) {
    moveVertical = moveSpeed; // Move para baixo
	sprite_index = spr_player_andando_baixo;
} else if (keyboard_check(vk_up)) {
    moveVertical = -moveSpeed; // Move para cima
	sprite_index = spr_player_andando_cima;
} else {
    moveVertical = 0; // Nenhuma tecla de movimento vertical pressionada
}

// Atualiza a posição do jogador com base nos movimentos horizontal e vertical
x += moveHorizontal;
y += moveVertical;

// Define o sprite do jogador para a direção em que está se movendo
if (moveHorizontal != 0 || moveVertical != 0) {
    // Se estiver se movendo em alguma direção, mantenha o sprite de movimento
} else {
    // Se não estiver se movendo, defina o sprite de parado de acordo com a última direção
    if (sprite_index == spr_player_andando_direita) {
        sprite_index = spr_player_parado_direita;
    } else if (sprite_index == spr_player_andando_esquerda) {
        sprite_index = spr_player_parado_esquerda;
    } else if (sprite_index == spr_player_andando_baixo) {
        sprite_index = spr_player_parado_baixo;
    } else if (sprite_index == spr_player_andando_cima) {
        sprite_index = spr_player_parado_cima;
    }
}