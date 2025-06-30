/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
instance_destroy()
global.moedas++
audio_destroy_stream(Moeda)
audio_play_sound(Moeda, 1, false);
