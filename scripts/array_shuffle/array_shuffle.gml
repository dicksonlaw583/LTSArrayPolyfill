///@func array_shuffle(array, [offset], [length])
///@arg {Array} array The array to use
///@arg {Real} [offset] OPTIONAL The offset, or starting index, in the array. Setting a negative value will count from the end of the array.
///@arg {Real} [length] OPTIONAL The number of elements to traverse. A negative value will traverse the array backwards.
///@return {Array<Any*>}
///@desc This function returns a new array in which the elements of the original array are randomly reordered.
///
///NOTE See array_shuffle_ext for the function that changes the original array in place.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_shuffle.htm
function array_shuffle(array, offset=0, length=infinity) {
	var result = [];
	var nResult = 0;
	LTS_ARRAY_LOOP {
		array_insert(result, irandom(nResult), array[i]);
		++nResult;
	};
	return result;
}