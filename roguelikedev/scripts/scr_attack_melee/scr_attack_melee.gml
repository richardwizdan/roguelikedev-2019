/// @function scr_attack_melee(target_id)
/// @Description Attack another actor with a melee weapon.
/// @param {real} traget_id id of the target

var _damage = irandom_range(0, 5),
	_target_id = argument0;
	
show_debug_message(string(_target_id));

if (_target_id != noone)
{
	with (instance_create_layer(_target_id.x+(global.TILE_SIZE/2), _target_id.y, "GUI", obj_damage_text))
	{
		damage = _damage;
	}
}