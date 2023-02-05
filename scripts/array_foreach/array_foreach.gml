///@func array_foreach(array, func, [offset], [length])
///@arg {Array} array The array to use
///@arg {Function} func The callback function to run on each element
///@arg {Real} offset OPTIONAL: The offset, or starting index, in the array. Setting a negative value will count from the end of the array.
///@arg {Real} length OPTIONAL: The number of elements to traverse. A negative value will traverse the array backwards.
///@desc This function loops through an array (or a range of it) and executes the Callback Method for each element.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_foreach.htm
function array_foreach(array, func, offset=0, length=infinity) {
	LTS_ARRAY_LOOP {
		func(array[i], i);
	}
}
