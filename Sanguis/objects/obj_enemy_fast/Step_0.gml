/// @description Insert description here
// You can write your code in this editor
yspd += grav;
dirFace = sign(obj_player.x - x)
if (dirFace = 0) {
	dirFace = 1;
}

var subPixel = 0.5;
if place_meeting(x, y + yspd, obj_wall) {
	var pixelCheck = subPixel * sign(yspd);
	while (!place_meeting(x, y + pixelCheck, obj_wall)) { 
		y += pixelCheck;
	}
	
	yspd = 0;
}


y += yspd;

if (hp <= 0) {
	instance_destroy();
}


if (place_meeting(x,y,obj_player)) {
	sprite_index = spr_enemy_fast_attack;
	image_xscale = dirFace;
}
else {
	sprite_index = spr_enemy_fast_idle;
	image_xscale = dirFace;
}

if (distance_to_object(obj_player) < 128 && distance_to_object(obj_player) > 8) {
	sprite_index = spr_enemy_fast_run;
	image_xscale = dirFace;
	x += 4  * dirFace;
}