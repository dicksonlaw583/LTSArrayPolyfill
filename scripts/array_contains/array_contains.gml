///@func array_contains(array, value, [offset], [length])
///@arg {Array<Any>} array The array in which to look for the value
///@arg {Any} value The value to look for in the array
///@arg {Real} offset OPTIONAL: The offset, or starting index, in the array. Setting a negative value will count from the end of the array.
///@arg {Real} length OPTIONAL: The number of elements to traverse. A negative value will traverse the array backwards.
///@return {Bool}
///@desc This function checks if the given value exists in the array, or in a part of it. It returns true if the value exists, or false if not.
///
///TIP To check if an array not just contains a value but rather contains a value that satisfies a certain condition, use array_any.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_contains.htm
function array_contains(array, value, offset=0, length=infinity){
	LTS_ARRAY_LOOP {
		if (array[i] == value) return true;
	}
	return false;
}