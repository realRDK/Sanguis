lives -= 1;
if (lives > 0) {
	room_restart();
}
else {
	room_goto(Lose);
}