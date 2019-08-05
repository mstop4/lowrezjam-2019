var _value = argument[0];
var _epsilon = argument[1];

var _diff = _value - floor(_value);

if (_diff <= _epsilon) {
	return floor(_value);
}

return ceil(_value);