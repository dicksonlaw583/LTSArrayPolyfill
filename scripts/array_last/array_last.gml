///@func array_last(array)
///@param {Array} array The array to get the last value from
///@return {Any}
///@desc Return the element at the end of the arrayi.e. the last element at index array_length(array)-1. If it doesn't exist, return undefined.
///
///NOTE This function does not modify the array. To remove the last element of the array while reading it, use array_pop.
///
///https://manual.gamemaker.io/monthly/en/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_last.htm
function array_last(array) {
	return (array_length(array) > 0) ? array[array_length(array)-1] : undefined;
}
