/// @description Update the occupant of this tile

if (collision_point(x, y, par_actor, false, false))
{
	tile_occupant = collision_point(x, y, par_actor, false, false);
}
else
{
	tile_occupant = noone;
}