if (keyboard_check(vk_left)){
   image_angle += 5;
}
if (keyboard_check(vk_right)){
   image_angle -= 5;
}
if (keyboard_check(vk_up)){
   motion_add(image_angle, 0.05);
}
if (keyboard_check_pressed(vk_space)){
   var inst = instance_create_layer(x,y, "Instances", obj_bullet);
   inst.direction = image_angle;
   audio_play_sound(snd_zap,1,false);
}
move_wrap(true, true, sprite_height/2);