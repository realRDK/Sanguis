/// @description Insert description here
// You can write your code in this editor

face = 1;
dir = 0;
runType = 0;
spd[0] = 3;
spd[1] = 6;
xspd = 0;
yspd = 0;

// Jumping
grav = 0.5
jspd = -10;
termVel = 4.5;

//Sprites
sprIdle = spr_idle;
sprWalk = spr_walk;
sprRun = spr_run;
sprJump = spr_jump;

// Attack
canAttack = true;

// States
states = {
	idle : new State (spr_idle),
	walk : new State (spr_walk),
	run : new State (spr_run),
	attack : new State (spr_attack1)
}

states.attack.StateOnEnd(states.idle);

state = states.idle;



















































