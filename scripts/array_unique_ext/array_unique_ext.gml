///@func array_unique_ext(array, [offset], [length])
///@arg {Array} array The array to use
///@arg {Real} [offset] OPTIONAL The offset, or starting index, in the array. Setting a negative value will count from the end of the array.
///@arg {Real} [length] OPTIONAL The number of elements to traverse. A negative value will traverse the array backwards.
///@return {Real}
///@desc This function is similar to array_unique, but instead of returning a modified array, it modifies the original array that you passed into the function.
///
///The function will modify the array, starting at the offset, writing only the unique values it finds in the array, and ignoring duplicates.
///
///It returns the number of elements written back to the array.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_unique_ext.htm
function array_unique_ext(array, offset=0, length=infinity) {
	var found = [];
	var writeIndex = -1;
	LTS_ARRAY_LOOP {
		if (writeIndex < 0) {
			writeIndex = i;
		}
		if (!array_contains(found, array[i])) {
			array_push(found, array[i]);
			if (i != writeIndex) {
				array[@writeIndex] = array[i];
			}
			writeIndex += iStep;
		}
	}
	return array_length(found);
}