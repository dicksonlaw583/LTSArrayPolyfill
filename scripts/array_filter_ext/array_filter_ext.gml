///@func array_filter_ext(array, predicate, [offset], [length])
///@arg {Array} array The array to use
///@arg {Function} predicate The Predicate Method to run on each element
///@arg {Real} [offset] OPTIONAL The offset, or starting index, in the array. Setting a negative value will count from the end of the array.
///@arg {Real} [length] OPTIONAL The number of elements to traverse. A negative value will traverse the array backwards.
///@return {Real}
///@desc This function is similar to array_filter, but instead of returning a new array, it modifies the original array that was passed as an argument.
///
///You supply a Predicate Method which runs for all elements in the array. It should return either true or false based on a condition.
///
///The first element for which the predicate function returns true is written at the index given by offset, others are written to subsequent indices (in the direction given by the sign of the length parameter).
///
///This function returns the new number of valid elements, starting at the given offset position and in the direction set by the length argument. For this function, it's the number of elements for which the predicate returned true, and were written back to the array.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_filter_ext.htm
function array_filter_ext(array, predicate, offset=0, length=infinity){
	var nValid = 0;
	LTS_ARRAY_LOOP {
		if (predicate(array[i], i)) {
			++nValid;
		} else {
			array_delete(array, i, 1);
			LTS_SKIP_DELETE_ITERATION;
		}
	}
	return nValid;
}