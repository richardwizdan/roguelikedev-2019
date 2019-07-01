/// @function scr_attack_melee(target_id)
/// @Description Attack another actor with a melee weapon.
/// @param {real} traget_id id of the target

var _damage = 0,
	_to_hit = 0,
	_enemy_hit = false,
	_damage = 0,
	_target_id = argument0;

if (_target_id != noone)
{
	
	// Check for hit
	switch (_target_id.att_weapon_skill)
	{
		case 1: _to_hit = 2; break;
		case 2: _to_hit = 3; break;
		case 3: _to_hit = 4; break;
		case 4: _to_hit = 4; break;
		case 5: _to_hit = 4; break;
		case 6: _to_hit = 4; break;
		case 7: _to_hit = 5; break;
		case 8: _to_hit = 5; break;
		case 9: _to_hit = 5; break;
		case 10: _to_hit = 6; break;
	}
	
	if (scr_d6(1) >= _to_hit)
	{
		_enemy_hit = true;
		
		// Wound the enemy
		_damage = att_strength + scr_d6(1) - _target_id.att_toughness;
		_target_id.att_current_wounds -= _damage;
	
		
	}
	
	// Create damage text
	with (instance_create_layer(_target_id.x+(global.TILE_SIZE/2), _target_id.y, "GUI", obj_damage_text))
	{
		damage = _damage;
		enemy_hit = _enemy_hit;
	}
	
	
}