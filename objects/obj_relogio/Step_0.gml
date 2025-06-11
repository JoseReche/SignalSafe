/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (sprite != spr_abertura && image_index = 10){
	sprite = spr_abertura
	image_index = 0
	sprite_index = sprite
}
if(image_index = 14){
	image_speed = 0
}
if(sprite == Sprite72 && image_index == 0 && keyboard_check_pressed(vk_enter)){
	image_speed=1	
}
if(keyboard_check_pressed(vk_down)){
	sprite = spr_conf
	image_index = 0
	image_speed=1
	sprite_index = sprite
		
}