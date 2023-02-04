///@func array_any(array, predicate, [offset], [length]
///@return {Bool}
///@desc This function is used to check if all of the elements in the given array match the same condition. You check that by passing a Predicate Method that runs on each element of the given array, and returns true or false.
///This function returns true if your predicate function returns true for all of the elements in the given array range, otherwise it returns false.
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_all.htm
function array_any(array, predicate, offset=0, length=infinity){
	LTS_ARRAY_LOOP {
		if (predicate(array[i], i)) return true;
	}
	return false;
}
