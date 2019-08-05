var _value = argument[0];
var _epsilon = argument[1];

var _diff = ceil(_value) - _value;

if (_diff <= _epsilon) {
	return ceil(_value);
}

return floor(_value);