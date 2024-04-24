// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateAttack(){
	hspeed = 0;
	vspeed = 0;
	
	if (sprite_index != spr_attack1) {
		sprite_index = spr_attack1;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
}