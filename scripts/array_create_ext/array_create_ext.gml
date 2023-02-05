///@func array_create_ext(size, func)
///@arg {Real} size The size of the array
///@arg {Function} func The callback function used to initialize each entry
///@return {Array<Any>}
///@desc This function creates an array of the given size. For each element in the new array, it calls the given callback function, and applies the return value to that element.
///
///Using this function you can initialise the array with values that change depending on the array index.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_create_ext.htm
function array_create_ext(size, func) {
	var result = array_create(size);
	var i = 0;
	repeat (size) {
		result[i] = func(i);
		++i;
	}
	return result;
}