
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//if(!room_exists(room_creditos)){
	var _yy = 652
	var _bateuCarro = global.bateuCarro*-1
	// Hud
	if(!global.dialogoPausado){
		draw_sprite_ext(spr_hud_compras,0,197,603,1.83,1.79,0,c_white,1) // Hud inferior
		//hotbar
		draw_sprite_ext(spr_compras,global.hotbar_spr[0],311,658,0.23,0.20,0,c_white,1)
		draw_sprite_ext(spr_compras,global.hotbar_spr[1],461,658,0.23,0.20,0,c_white,1)
		draw_sprite_ext(spr_compras,global.hotbar_spr[2],611,658,0.23,0.20,0,c_white,1)
		draw_sprite_ext(spr_compras,global.hotbar_spr[3],761,658,0.23,0.20,0,c_white,1)
		draw_sprite_ext(spr_compras,global.hotbar_spr[4],911,658,0.23,0.20,0,c_white,1)
		draw_sprite_ext(spr_compras,global.hotbar_spr[5],1051,658,0.23,0.20,0,c_white,1)

		//draw_sprite(spr_hud_player,4,_xx,_yy)	// seleção item HUD
		//draw_sprite(spr_hud_player,4,_xx,_yy)	// seleção item HUD

		//draw_sprite(spr_hud_player,5,_xxx,_yy)	// X do item HUD
	
	
	 
	}
 
	if(global.fala!=""&&!proximo){
		draw_sprite_ext(Premade_dialog_box_medium,0,193,0,4.20,4.20,0,c_white,1) // Cixa de fala
		draw_sprite_ext(spr_rosto_pessoa,global.pessoa_conversa,98,-172,2.90,2.90,0,c_white,1) // Cixa de fala Rosto
		draw_set_font(ft_valor);
		draw_text_ext_color(464,83,global.fala, 22 , 683, #0D9068, #0D9068, #0D9068, #0D9068,1 )
		draw_set_halign(-1);
		draw_set_valign(-1);
		draw_set_halign(-1);
		draw_set_valign(-1);
		draw_set_font(-1);
		if(global.pessoa_conversa<2)global.dialogoPausado = true
	}

	draw_set_font(ft_valor_inventario);
	
	if(tutorial){
		global.mover = false
		draw_sprite_ext(spr_Livro_tutorial,1,225,-5,1.49230,1.49230,0,c_white,1)
	}else{global.mover = true}
	
	if(!tutorial&&inventario_on){
		draw_sprite(spr_book_inventario,0,341,15)
		for(var i = 0; i<4;i++){
			for(var ii = 0; ii<6;ii++){
				draw_sprite_ext(global.inventario[i][ii],1,x_invent+(ii*x_soma),y_invent+(i*y_soma),0.49230,0.49230,0,c_white,1)
				draw_text_ext_color(556,332,_bateuCarro, 22 , 683, #0D9068, #0D9068, #0D9068, #0D9068,1 )
				draw_text_ext_color(556,295,global.moedas, 22 , 683, #0D9068, #0D9068, #0D9068, #0D9068,1 )
			
			}
		}
		global.mover = false
	}else{global.mover = true}
	/*
	draw_set_font(-1)
	draw_text(408,500,"Posição X: "+ string(global.testex))
	draw_text(408,550,"Posição Y: "+ string(global.testey))
	draw_text(408,600,"Posição Xx: "+ string(global.testexx))
	draw_text(408,650,"Posição Yy: "+ string(global.testeyy))
	*/
//}