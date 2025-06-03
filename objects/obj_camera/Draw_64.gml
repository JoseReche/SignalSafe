
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _yy = 652
// Hud
if(!global.dialogoPausado){
	draw_sprite(spr_hud_player,3,428,_yy) // Hud inferior
	var _escala = 0.06
	//hotbar
	draw_sprite_ext(hotbar[0],hotbar_spr[0],556,703,_escala,_escala,0,c_white,1)
	draw_sprite_ext(hotbar[1],hotbar_spr[1],595,703,_escala,_escala,0,c_white,1)
	draw_sprite_ext(hotbar[2],hotbar_spr[2],634,703,_escala,_escala,0,c_white,1)
	draw_sprite_ext(hotbar[3],hotbar_spr[3],759,703,_escala,_escala,0,c_white,1)
	draw_sprite_ext(hotbar[4],hotbar_spr[4],798,703,_escala,_escala,0,c_white,1)
	draw_sprite_ext(hotbar[5],hotbar_spr[5],837,703,_escala,_escala,0,c_white,1)

	draw_sprite(spr_hud_player,4,_xx,_yy)	// seleção item HUD

	draw_sprite(spr_hud_player,5,_xxx,_yy)	// X do item HUD
	 
	

}
 
//draw_sprite(spr_hud_player,6,73,_yy-100) // MAPA
if(global.fala!=""&&!global.dialogoPausado ){
	draw_sprite_ext(Premade_dialog_box_medium,0,193,0,4.20,4.20,0,c_white,1) // Cixa de fala
	draw_sprite_ext(spr_rosto_pessoa,global.pessoa_conversa,98,-172,2.90,2.90,0,c_white,1) // Cixa de fala Rosto
	draw_set_font(ft_valor);
	draw_text_ext_color(464,83,global.fala, 22 , 683, #0D9068, #0D9068, #0D9068, #0D9068,1 )
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_font(-1);
}





draw_set_font(ft_valor);
//draw_text_ext_color(460,692,"R$" + string_format(global.dinheiro, 0, 2), 5 , 300, #0D9068, #0D9068, #0D9068, #0D9068,1 )
draw_set_font(-1)



if(inventario_on && !global.dialogoPausado ){
	draw_sprite(spr_book_inventario,0,341,15)
	//draw_sprite_ext(spr_post,1,global.testex,global.testey,0.49230,0.49230,0,c_white,1)
	for(var i = 0; i<4;i++){
		for(var ii = 0; ii<6;ii++){
			draw_sprite_ext(global.inventario[i][ii],1,x_invent+(ii*x_soma),y_invent+(i*y_soma),0.49230,0.49230,0,c_white,1)
		}
	}
}
/*if(global.box_tutorial==0){
	draw_sprite_ext(spr_tutorial,indexImag,537,103,0.4,0.4,0,c_white,1) // Cixa de tutorial?
	if(indexImag==10){
		draw_sprite_ext(spr_jogar,indexBotton,542,309,2,2,0,c_white,1) // Cixa de fala Rosto
		draw_sprite_ext(spr_pular,indexBotton,734,309,2,2,0,c_white,1) // Cixa de fala Rosto
	}
}*/

if(instance_exists(obj_carro_direito)){ draw_text(408,500,"Posição X: "+ string(obj_carro_direito.alarm[0])) }
draw_text(408,550,"Posição Y: "+ string(global.testey))
draw_text(408,600,"Posição Xx: "+ string(global.testexx)) 
draw_text(408,650,"Posição Yy: "+ string(global.testeyy))
//draw_sprite(spr_hud_player,0,494,0) // Conversa

/*if(global.tutorial){
	global.fala="Aperte W para seguir em frente"
	draw_sprite(spr_WADS,0,global.testex,global.testey)//W
}*/