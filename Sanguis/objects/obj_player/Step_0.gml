//Movement Control

getControls();

if (state == states.idle || state == states.walk || state == states.run) {
dir = moveRight - moveLeft;

if (dir != 0) {
	face = dir;
}

runType = runKey;
xspd = dir * spd[runType];

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
if (abs(xspd) > 5) {
	state_set(states.run);
}

if (abs(xspd) > 0 && xspd < 6) {
	state_set(states.walk);
}

if (xspd == 0) {
	state_set(states.idle);
}

if (keyboard_check_pressed(vk_space) && canAttack) {
	state_set_attack(states.attack);
}

mask_index = spr_idle;
}