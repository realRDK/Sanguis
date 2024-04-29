//Movement Control

getControls();

if (state == states.idle || state == states.walk || state == states.run) {
dir = moveRight - moveLeft;

if (dir != 0) {
	face = dir;
}

if (crimsonFuryKey && crimsonMeter >= crimsonMeterMax) {
	crimsonFury = true;
}

if (crimsonFury) {
	runType = 2;
	attackSpeed = attkSpd[1];
}
else {
	runType = runKey;
	attackSpeed = attkSpd[0];
}
xspd = dir * spd[runType];

if (crimsonFury) {
	if (crimsonMeter > 0) {
		crimsonMeter -= 0.5;
	}
	else {
		crimsonFury = false;
	}
}



//Moving platform collision
var _movingPlatform = instance_place(x,y + max(1, yspd), obj_moving_platform);
if (_movingPlatform && bbox_bottom <= _movingPlatform.bbox_top) {
	if (yspd > 0) {
		while (!place_meeting(x, y + sign(yspd), obj_moving_platform)) {
			y += sign(yspd);
		}
		
		yspd = 0;
	}
	
	// add velocity
	x += _movingPlatform.moveX;
	y += 0;
}

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
if (crimsonFury) {
	jumpSpd = jspd[1];
}
else {
	jumpSpd = jspd[0];
}

if (jumpPress && place_meeting(x, y + 1, obj_wall)) {
	yspd = jumpSpd;
	audio_play_sound(snd_jump, 7, false);
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
if (health <= 0) {
	state_set_dead(states.dead);
}

if (!isDead) {

//if (abs(xspd) >= 6) {
	//state_set(states.run);
//}

if (abs(xspd) > 0) {
	state_set(states.walk);
}

if (xspd == 0) {
	state_set(states.idle);
}

if (keyboard_check_pressed(vk_space) && canAttack1) {
	state_set_attack(states.attack);
}

mask_index = spr_idle;
}

}