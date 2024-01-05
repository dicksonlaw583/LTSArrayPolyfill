///@func array_union(...)
///@return {Array<Any>}
///@desc This function returns a new array that is the union of all provided arrays. A union refers to all the elements in the provided arrays, with duplicates removed.
///
///https://manual.gamemaker.io/monthly/en/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_union.htm
function array_union() {
	var result = array_create(array_length(argument[0]));
	array_copy(result, 0, argument[0], 0, array_length(argument[0]));
	for (var j = 1; j < argument_count && array_length(result) > 0; ++j) {
		var array = argument[j];
		var nArray = array_length(array);
		for (var i = 0; i < nArray; ++i) {
			if (!array_contains(result, array[i])) {
				array_push(result, array[i]);
			}
		}
	}
	return result;
}