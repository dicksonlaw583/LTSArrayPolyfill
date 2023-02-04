///@func array_contains(array, value, [offset], [length])
///@arg {Array<Any>} array The array in which to look for the value
///@arg {Any} value The value to look for in the array
///@return {Bool}
///@desc This function checks if the given value exists in the array, or in a part of it. It returns true if the value exists, or false if not.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_contains.htm
function array_contains(array, value, offset=0, length=infinity){
	LTS_ARRAY_LOOP {
		if (array[i] == value) return true;
	}
	return false;
}