/// @description Control the enemy

x = map_x*global.TILE_SIZE;
y = map_y*global.TILE_SIZE;

//----- Death
if (att_current_wounds <= 0)
{
	instance_destroy();
}