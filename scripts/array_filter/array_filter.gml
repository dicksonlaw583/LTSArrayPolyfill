///@func array_filter(array, predicate, [offset], [length])
///@arg {Array} array The array to use
///@arg {Function} predicate The Predicate Method to run on each element
///@arg {Real} [offset] OPTIONAL The offset, or starting index, in the array. Setting a negative value will count from the end of the array.
///@arg {Real} [length] OPTIONAL The number of elements to traverse. A negative value will traverse the array backwards.
///@return {Array}
///@desc This function returns a new array that is the filtered version of the given array (or a range of it).
///
///You supply a Predicate Method which runs for all elements in the array. It should return either true or false based on a condition.
///
///Elements for which the predicate function returns true are included in the returned array, and ones that get false are ignored.
///
///By default the function checks the whole array. You can optionally supply Offset And Length arguments to check a part of the array, traversing the array forward or backward.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_filter.htm
function array_filter(array, predicate, offset=0, length=infinity) {
	var result = [];
	LTS_ARRAY_LOOP {
		if (predicate(array[i], i)) {
			array_push(result, array[i]);
		}
	}
	return result;
}