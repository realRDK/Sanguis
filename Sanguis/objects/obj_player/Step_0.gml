//Movement Control

getControls();

switch (state) {
	case PlayerState.Free: PlayerStateFree(); break;
	case PlayerState.Attack: PlayerStateAttack(); break;
	case PlayerState.Combo: PlayerStateCombo(); break;
}

// Sprite Control

if (abs(xspd) > 0 && xspd < 6) {
	sprite_index = spr_walk;
}

if (abs(xspd) >= 6) {
	sprite_index = spr_run;
}

if (xspd == 0) {
	sprite_index = spr_idle;
}

mask_index = spr_idle;
