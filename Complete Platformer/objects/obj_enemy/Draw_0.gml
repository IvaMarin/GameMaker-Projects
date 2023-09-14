/// @desc normal or flashing

draw_self(); // by default it's only this line

if (flash > 0) {
	shader_set(sh_white);
	draw_self(); 
	shader_reset();
	
	flash--;
}