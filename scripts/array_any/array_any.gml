///@func array_any(array, predicate, [offset], [length])
///@arg {Array} array The array to use
///@arg {Function} predicate The Predicate Method to run on each element
///@arg {Real} [offset] OPTIONAL The offset, or starting index, in the array. Setting a negative value will count from the end of the array.
///@arg {Real} [length] OPTIONAL The number of elements to traverse. A negative value will traverse the array backwards.
///@return {Bool}
///@desc This function is used to check if any one element in the given array matches a condition. You check that by passing a Predicate Method that runs on each element of the given array, and returns true or false.
///
///This function returns true if the predicate function returns true for at least one of the elements in the given array range.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_any.htm
function array_any(array, predicate, offset=0, length=infinity){
	LTS_ARRAY_LOOP {
		if (predicate(array[i], i)) return true;
	}
	return false;
}
