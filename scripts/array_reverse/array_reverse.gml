///@func array_reverse(array, [offset], [length])
///@arg {Array} array The array to use
///@arg {Real} [offset] OPTIONAL The offset, or starting index, in the array. Setting a negative value will count from the end of the array.
///@arg {Real} [length] OPTIONAL The number of elements to traverse. A negative value will traverse the array backwards.
///@return {Array<Any*>}
///@desc This function returns a new array with all the elements from the given array in a reversed order.
///
///You can also reverse only a part of the array by supplying Offset And Length values.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_reverse.htm
function array_reverse(array, offset=0, length=infinity) {
	var result = [];
	LTS_ARRAY_LOOP {
		array_insert(result, 0, array[i]);
	}
	return result;
}