/// @function scr_d6(number_of_dices)
/// @description Roll one six-sided dice.
/// @param {int} number_of_dices Number of dices to throw.

var _result = 0,
	_number_of_dices = argument0;

for (var i=0; i < _number_of_dices; i++)
{
	_result += irandom_range(1, 6);
}

return _result;