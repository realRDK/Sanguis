draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * face, image_yscale, image_angle, image_blend, image_alpha);
draw_healthbar(20, 20, 220, 40, health, c_black, c_red, c_green, 0, false, true);
draw_healthbar(20, 60, 220, 80, crimsonMeter, c_black, c_red, c_red, 0, false, true);
for (var i = 0; i < lives; i++) {
	draw_sprite(spr_lives, 0, 240 + 32 * i, 40)
}