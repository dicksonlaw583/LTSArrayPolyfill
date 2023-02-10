///@func array_copy_while(array, predicate, [offset], [length])
///@arg {Array} array The array to use
///@arg {Function} predicate The Predicate Method to run on each element
///@arg {Real} [offset] OPTIONAL The offset, or starting index, in the array. Setting a negative value will count from the end of the array.
///@arg {Real} [length] OPTIONAL The number of elements to traverse. A negative value will traverse the array backwards.
///@return {Array<Any*>}
///@desc This function creates a new array and adds elements of the input array to it as long as the predicate function returns true.
///
///The function stops execution as soon as the predicate function returns false. The first element for which the predicate function returns false and any elements that come after it are not added to the new array.
///
///NOTE: This function is identical to array_filter with the difference that this function stops execution after the first time the predicate function returns false. array_filter on the other hand continues to check elements, even after encountering an element for which the predicate function returns false.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_copy_while.htm
function array_copy_while(array, predicate, offset=0, length=infinity) {
	var result = [];
	LTS_ARRAY_LOOP {
		if (predicate(array[i], i)) {
			array_push(result, array[i]);
		} else {
			return result;
		}
	}
	return result;
}