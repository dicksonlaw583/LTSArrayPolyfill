///@func array_get_index(array, value, [offset], [length])
///@arg {Array<Any>} array The array in which to look for the value
///@arg {Any} value The value to look for in the array
///@arg {Real} offset OPTIONAL: The offset, or starting index, in the array. Setting a negative value will count from the end of the array.
///@arg {Real} length OPTIONAL: The number of elements to traverse. A negative value will traverse the array backwards.
///@return {Real}
///@desc This function gets the index of a specific value in the given array.
///
///Optionally an offset and length parameter can be provided to the function to define the range of the array in which to search.
///
///If the value isn't found, -1 is returned.
///
///TIP If you're looking for the index of the first array element that satisfies a condition, use array_find_index.
///
///https://manual.gamemaker.io/monthly/en/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_get_index.htm
function array_get_index(array, value, offset=0, length=infinity){
	LTS_ARRAY_LOOP {
		if (array[i] == value) return i;
	}
	return -1;
}