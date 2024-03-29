/// @function scr_update_fov()
/// @Description Updating the field of view of the player.

var _offset = global.TILE_SIZE/2;

with (par_tile)
{
	if (!tile_move)
	{
		if (point_distance(x+_offset, y+_offset, global.PLAYER.x+_offset, global.PLAYER.y+_offset) < global.PLAYER.view_range &&
		!collision_line(x+_offset, y+_offset, global.PLAYER.x+_offset, global.PLAYER.y+_offset, obj_wall, false, true))
		{
			tile_lit_up = 0;	
			tile_visible = true;
		}
		else
		{
			tile_lit_up = 2;	
		}
	}
}

with (par_enemy)
{
	if (point_distance(x+_offset, y+_offset, global.PLAYER.x+_offset, global.PLAYER.y+_offset) < global.PLAYER.view_range &&
	!collision_line(x+_offset, y+_offset, global.PLAYER.x+_offset, global.PLAYER.y+_offset, obj_wall, false, true))
	{
		enemy_visible = true;
	}
	else
	{
		enemy_visible = false;	
	}
}