/// @description Insert description here
// You can write your code in this editor

face = 1;
dir = 0;
runType = 0;
spd[0] = 3;
spd[1] = 6;
spd[2] = 9;
xspd = 0;
yspd = 0;

// Jumping
grav = 0.5
jspd[0] = -10;
jspd[1] = -15;
termVel = 4.5;

//Sprites
sprIdle = spr_idle;
sprWalk = spr_walk;
sprRun = spr_run;
sprJump = spr_jump;

// Attack
canAttack1 = true;
attkSpd[0] = 60;
attkSpd[1] = 15;
attackSpeed = attkSpd[0];

// States
states = {
	idle : new State (spr_idle),
	walk : new State (spr_walk),
	run : new State (spr_run),
	attack : new State (spr_attack1),
	combo : new State (spr_attack2),
	dead : new State (spr_dead)
}

states.attack.StateOnEnd(states.idle);

state = states.idle;

// Meters
health = 100;
hpMax = 100;
crimsonMeter = 0;
crimsonMeterMax = 100;
isDead = false;
crimsonFury = false;


















































