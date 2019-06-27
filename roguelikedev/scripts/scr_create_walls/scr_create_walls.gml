/// @function scr_create_walls
/// @description Crteate walls around all ground tiles.

instance_create_layer(x+global.TILE_SIZE, y,				  "Tiles", obj_wall); // right
instance_create_layer(x+global.TILE_SIZE, y-global.TILE_SIZE, "Tiles", obj_wall); // right-up
instance_create_layer(x,				  y-global.TILE_SIZE, "Tiles", obj_wall); // up
instance_create_layer(x-global.TILE_SIZE, y-global.TILE_SIZE, "Tiles", obj_wall); // left-up
instance_create_layer(x-global.TILE_SIZE, y,				  "Tiles", obj_wall); // left
instance_create_layer(x-global.TILE_SIZE, y+global.TILE_SIZE, "Tiles", obj_wall); // left-down
instance_create_layer(x,				  y+global.TILE_SIZE, "Tiles", obj_wall); // down
instance_create_layer(x+global.TILE_SIZE, y+global.TILE_SIZE, "Tiles", obj_wall); // right-down