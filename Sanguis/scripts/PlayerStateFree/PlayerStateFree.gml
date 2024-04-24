// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
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
}