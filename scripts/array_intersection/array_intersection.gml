///@func array_intersection(...)
///@return {Array}
///@desc This function returns a new array with the intersection of all arrays that you provide to it. An intersection refers to all the values that are present in all of the provided arrays.
///
///The function also removes any duplicates found in the intersection, so it only returns unique values.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_intersection.htm
function array_intersection(){
	var result = array_create(array_length(argument[0]));
	array_copy(result, 0, argument[0], 0, array_length(argument[0]));
	for (var j = 1; j < argument_count && array_length(result) > 0; ++j) {
		var array = argument[j];
		for (var i = array_length(result)-1; i >= 0; --i) {
			if (!array_contains(array, result[i])) {
				array_delete(result, i, 1);
			}
		}
	}
	return result;
}
