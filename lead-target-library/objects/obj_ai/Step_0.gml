var _bullet = instance_create_depth(x,y,-1,obj_bullet);
with(_bullet)
{
	var ang = scr_intercept(id,obj_player)
	show_debug_message(string(ang));
	direction = ang;
	speed = move_speed;
	//hspd = lengthdir_x(move_speed, ang);
	//vspd = lengthdir_y(move_speed, ang);
}