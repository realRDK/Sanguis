// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getControls(){
	moveRight = keyboard_check(ord("D"));
	moveLeft = keyboard_check(ord("A"));
	jumpPress = keyboard_check_pressed(ord("W"));
	runKey = keyboard_check(vk_shift);
	attackKey = keyboard_check_pressed(vk_space);
}