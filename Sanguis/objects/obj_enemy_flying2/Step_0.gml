/// @description Insert description here
// You can write your code in this editor

if (hp <= 0) {
	instance_destroy();
}

if (direction >= 270 || direction < 90) {
	image_xscale = -1;
}
else {
	image_xscale = 1;
}