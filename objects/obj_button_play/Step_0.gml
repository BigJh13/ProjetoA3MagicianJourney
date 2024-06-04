/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if alarm[0] <= 0{
	switch(music){
		case 1:
		audio_play_sound(snd_menu_music1, 0, false);
		alarm[0] = audio_sound_length(snd_menu_music1) * game_get_speed(gamespeed_fps);
		music = 2;
		break;
		
		case 2:
		audio_play_sound(snd_menu_music2, 0, false);
		alarm[0] = audio_sound_length(snd_menu_music2) * game_get_speed(gamespeed_fps);
		music = 1;
		break;
	}
}
