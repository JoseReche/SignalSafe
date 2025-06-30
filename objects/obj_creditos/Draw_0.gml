/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_starwars); // usa a fonte criada

var centro_x = display_get_width() / 2;

for (var i = 0; i < array_length(texto_creditos); i++) {
    var yy = scrolle + i * 40;
    var escala = 1 - ((yy - 100) / 600);
    escala = clamp(escala, 0.3, 1);
    draw_set_alpha(escala);
    draw_text_transformed(682, yy, texto_creditos[i], escala, escala, 0);
}
draw_set_alpha(1);
scrolle -= velocidade;
