///@func array_contains_ext(array, values, [matchAll], [offset], [length])
///@arg {Array<Any>} array The array in which to look for the values
///@arg {Array<Any>} values An array containing the values to look for.
///@arg {Bool} matchAll OPTIONAL: Whether all values should be present in the array (true) or any of the values will do (false).
///@arg {Real} offset OPTIONAL: The offset, or starting index, in the array. Setting a negative value will count from the end of the array.
///@arg {Real} length OPTIONAL: The number of elements to traverse. A negative value will traverse the array backwards. 
///@return {Bool}
///@desc This function checks if the given array (or a part of it) contains any or all of the given values.
///
///The matchAll argument determines if all values should be present in the array (true) or if any one of the values will do (false).
///
///The array of values may contain duplicates. This way you can check if there are multiple (or enough) occurrences of a value in an array. To avoid this, you can run array_unique on your array first to guarantee only single occurrences.
///
///TIP: To check if an array not just contains a value but rather contains a value that satisfies a certain condition, use array_any.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_contains_ext.htm
function array_contains_ext(array, values, matchAll=false, offset=0, length=infinity){
	var foundMatch = false;
	for (var j = array_length(values)-1; j >= 0; --j) {
		if (array_contains(array, values[j], offset, length)) {
			if (!matchAll) return true;
			foundMatch = true;
		} else if (matchAll) {
			return false;
		}
	}
	return foundMatch;
}