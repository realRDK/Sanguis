//Movement Control

moveRight = keyboard_check(ord("D"));
moveLeft = keyboard_check(ord("A"));
jumpPress = keyboard_check_pressed(ord("W"));

dir = moveRight - moveLeft;

if (dir != 0) {
	face = dir;
}

xspd = dir * spd;

var subPixel = 0.5;
if place_meeting(x + xspd, y, obj_wall) {
	var pixelCheck = subPixel * sign(xspd);
	while (!place_meeting(x + pixelCheck, y, obj_wall)) {
		x += pixelCheck;
	}
	
	xspd = 0;
}

x += xspd;

// Jumping Control
yspd += grav;

if (jumpPress && place_meeting(x, y + 1, obj_wall)) {
	yspd = jspd;
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

// Sprite Control

if (abs(xspd) > 0) {
	sprite_index = spr_walk;
}

if (xspd == 0) {
	sprite_index = spr_idle;
}