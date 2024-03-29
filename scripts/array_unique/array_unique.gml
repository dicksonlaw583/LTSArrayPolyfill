///@func array_unique(array, [offset], [length])
///@arg {Array<Any>} array The array to use
///@arg {Real} [offset] OPTIONAL The offset, or starting index, in the array. Setting a negative value will count from the end of the array.
///@arg {Real} [length] OPTIONAL The number of elements to traverse. A negative value will traverse the array backwards.
///@return {Array<Any>}
///@desc This function returns a new array containing the values of the input array (or a range of it) with any duplicate values removed.
///
///https://manual.gamemaker.io/monthly/en/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_unique.htm
function array_unique(array, offset=0, length=infinity) {
	var result = [];
	LTS_ARRAY_LOOP {
		if (!array_contains(result, array[i])) {
			array_push(result, array[i]);
		}
	}
	return result;
}