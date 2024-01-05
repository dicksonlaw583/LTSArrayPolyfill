///@func array_shift(array)
///@param {Array} array The array to shift, i.e. to return and remove the first element from
///@return {Any}
///@desc Remove the first element from the given array and return it. 
///
///NOTE Use array_first to get the first element without removing it from the array.
///
///https://manual.gamemaker.io/monthly/en/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_shift.htm
function array_shift(array) {
	if (array_length(array) > 0) {
		var first = array[0];
		array_delete(array, 0, 1);
		return first;
	}
	return undefined;
}
