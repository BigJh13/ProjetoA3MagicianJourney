/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if !recently_hit{
	player_life(other.damage);
	recently_hit = true;
	alarm[0] = invulnerability_frames*(game_get_speed(gamespeed_fps)/6);
}