/// @description Insert description here
// You can write your code in this editor
if (obj_player.crimsonFury) {
	hp -= 3;
}
else {
	hp -= 1;
}

if (obj_player.crimsonMeter < obj_player.crimsonMeterMax) {
	obj_player.crimsonMeter += 3;
}

if (health < obj_player.hpMax) {
	health += 10;
}