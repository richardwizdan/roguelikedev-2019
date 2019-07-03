/// @description Initialize variables

//----- Map variables
map_x = 0;
map_y = 0;
view_range = 100;

//----- Sprite variables
player_sprite = spr_player;
bkg_sprite = spr_bg_dark;

//----- Player attributes
att_current_wounds = scr_d6(1)+9;
att_max_wounds = att_current_wounds;
att_weapon_skill = 3;
att_strength = 4;
att_toughness = 4;
att_move = 1;
att_actions = 2;
att_current_actions = att_actions;