/// @description Update the occupant of this tile

if (collision_point(x, y, par_actor, false, false))
{
	tile_occupant = collision_point(x, y, par_actor, false, false);
	if (tile_occupant == global.PLAYER) { tile_occupant = noone; }
}
else
{
	tile_occupant = noone;
}