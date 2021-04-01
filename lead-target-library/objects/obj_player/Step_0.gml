#region //inputs

key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

var move_hor = key_right - key_left
var move_ver = key_down - key_up;
if(move_ver != 0)
{
	vspd = move_speed * sign(move_ver);
}
else
{
	vspd = 0;
}

if(move_hor != 0)
{
	hspd = move_speed * sign(move_hor);
}
else
{
	hspd = 0;
}

#endregion
#region //movement
if(place_meeting(x + hspd, y, obj_solid))
{
	while(!place_meeting(x + sign(hspd), y, obj_solid))
	{
		x += sign(hspd);
	}
	hspd = 0;
}
x += hspd;

if(place_meeting(x, y + vspd, obj_solid))
{
	while(!place_meeting(x, y + sign(vspd), obj_solid))
	{
		y += sign(vspd);
	}
	vspd = 0;
}
y += vspd;
#endregion