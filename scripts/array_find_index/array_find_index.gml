///@func array_find_index(array, predicate, [offset], [length])
///@arg {Array<Any>} array The array in which to look for the value
///@arg {Function} predicate The Predicate Method to run on each element
///@arg {Real} offset OPTIONAL: The offset, or starting index, in the array. Setting a negative value will count from the end of the array.
///@arg {Real} length OPTIONAL: The number of elements to traverse. A negative value will traverse the array backwards.
///@return {Real}
///@desc This function is used to find the index of the first array element that satisfies a condition.
///
///You supply a Predicate Method which runs for all elements in the array. It should return either true or false based on a condition.
///
///As soon as the predicate function returns true for an element, the function stops and returns the index of that element.
///
///If the predicate doesn't return true on any element, the function returns -1.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_find_index.htm
function array_find_index(array, predicate, offset=0, length=infinity) {
	LTS_ARRAY_LOOP {
		if (predicate(array[i], i)) return i;
	}
	return -1;
}