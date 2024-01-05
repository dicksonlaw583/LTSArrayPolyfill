///@func array_concat(...)
///@return {Array}
///@desc This function takes multiple arrays as arguments, joins them together (in the order of the arguments), and returns the joined array.
///
///https://manual.gamemaker.io/monthly/en/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_concat.htm
function array_concat(){
	var totalSize = 0;
	var sizes = array_create(argument_count);
	for (var i = 0; i < argument_count; ++i) {
		sizes[i] = array_length(argument[i]);
		totalSize += sizes[i];
	}
	var result = array_create(totalSize);
	var currentPos = 0;
	for (var i = 0; i < argument_count; ++i) {
		array_copy(result, currentPos, argument[i], 0, sizes[i]);
		currentPos += sizes[i];
	}
	return result;
}