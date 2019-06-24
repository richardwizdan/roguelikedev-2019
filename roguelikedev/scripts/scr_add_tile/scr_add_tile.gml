/// @function add_tile(map_x, map_y, tile_name, tile_sprite, tile_block_path, tile_block_sight)
/// @description Add a tile to the game world.
/// @param {int} map_x x position on the game map.
/// @param {int} map_y y position on the game map.
/// @param {string} tile_name Name of the tile.
/// @param {real} tile_sprite ID of a sprite that will be drawn.
/// @param {bool} tile_block_path Blocking the movement.
/// @param {bool} tile_block_sight Blocking the line if sigh.

var _map_x = argument0,
	_map_y = argument1,
	_tile_name = argument2,
	_tile_sprite = argument3,
	_tile_block_path = argument4,
	_tile_block_sight = argument5;

global.map[_map_x, _map_y] = instance_create_layer(_map_x*global.TILE_SIZE, _map_y*global.TILE_SIZE, "Tiles", obj_tile);
with (global.map[_map_x, _map_y])
{
	tile_name = _tile_name;
	tile_sprite = _tile_sprite;
	tile_block_path = _tile_block_path;
	tile_block_sight = _tile_block_sight;
}