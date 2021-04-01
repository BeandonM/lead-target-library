var origin = argument0;
var target = argument1;

var pspeed = origin.move_speed;
var _x = target.x - origin.x;
var _y = target.y - origin.y;

var vx = target.hspd - origin.hspd;
var vy = target.vspd - origin.vspd;

var a = sqr(vx) + sqr(vy) - sqr(pspeed);
var b = 2 * (vx * _x + vy * _y);
var c = sqr(_x) + sqr(_y);

var deter = sqr(b) - 4 * a * c;

if(deter < 1)
	return point_direction(origin.x, origin.y, target.x, target.y);
var t = (-b - sqrt(deter)) / (2 * a);

return darctan2(-_y - vy * t, _x + vx * t);