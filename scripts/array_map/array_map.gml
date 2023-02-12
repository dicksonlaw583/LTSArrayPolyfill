///@func array_map(array, mapper, [offset], [length])
///@arg {Array} array The array to use
///@arg {Function} mapper The callback method to run on each element
///@arg {Real} [offset] OPTIONAL The offset, or starting index, in the array. Setting a negative value will count from the end of the array.
///@arg {Real} [length] OPTIONAL The number of elements to traverse. A negative value will traverse the array backwards.
///@return {Array<Any>}
///@desc This function returns a modified version of the given array, based on a callback function.
///
///You provide an array, and a Callback Method, which is called for each element in the given array. The callback function can return any value, which is applied to that index in a new copy of the array.
///
///After the callback is executed for all elements, the modified array is returned. The original array is not changed; for that, see array_map_ext.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_map.htm
function array_map(array, mapper, offset=0, length=infinity) {
	var result = [];
	LTS_ARRAY_LOOP {
		array_push(result, mapper(array[i], i));
	}
	return result;
}