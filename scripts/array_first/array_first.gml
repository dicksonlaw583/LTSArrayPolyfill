///@func array_first(array)
///@param {Array} array The array to get the first value from
///@return {Any}
///@desc Return the element at the start of the array, i.e. the first element at index 0. If it doesn't exist, return undefined.
///
///NOTE Use array_shift to also remove the first element from the array.
///
///https://manual.gamemaker.io/monthly/en/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_first.htm
function array_first(array) {
	return (array_length(array) > 0) ? array[0] : undefined;
}
