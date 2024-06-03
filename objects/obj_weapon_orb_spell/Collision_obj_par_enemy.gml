
scr_damage_enemies(scr_weapon_damage_calculation(self), other);
pierced_enemies++;
if(global.orb_spell_pierce == pierced_enemies){
instance_destroy();
}
