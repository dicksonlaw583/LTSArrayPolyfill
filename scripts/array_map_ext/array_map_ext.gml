///@func array_map_ext(array, mapper, [offset], [length])
///@arg {Array} array The array to use
///@arg {Function} mapper The callback method to run on each element
///@arg {Real} [offset] OPTIONAL The offset, or starting index, in the array. Setting a negative value will count from the end of the array.
///@arg {Real} [length] OPTIONAL The number of elements to traverse. A negative value will traverse the array backwards.
///@return {Real}
///@desc This function is similar to array_map, but instead of returning a new array, it modifies the original array that was passed as an argument.
///
///You supply a Callback Method which runs for all elements in the array. It can return any value which is applied back to the original array, starting at the index given by offset, in the direction given by the sign of the length parameter.
///
///This function returns the new number of valid elements, starting at the given offset position and in the direction set by the length argument. For this function, it's the number of elements modified in the given range.
///
///https://manual.gamemaker.io/monthly/en/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_map_ext.htm
function array_map_ext(array, mapper, offset=0, length=infinity) {
	var nMods = 0;
	LTS_ARRAY_LOOP {
		var originalValue = array[i];
		var newValue = mapper(originalValue, i);
		if (originalValue != newValue) {
			array[@i] = newValue;
			++nMods;
		}
	}
	return nMods;
}