///@func array_map(array, reducer, [init], [offset], [length])
///@arg {Array} array The array to use
///@arg {Function} reducer The function to use for each previous element, current element, and index
///@arg {Any} [init] OPTIONAL The initial value to use as the first carried value. If none is provided this defaults to array[offset] and the first iteration is skipped.
///@arg {Real} [offset] OPTIONAL The offset, or starting index, in the array. Setting a negative value will count from the end of the array.
///@arg {Real} [length] OPTIONAL The number of elements to traverse. A negative value will traverse the array backwards.
///@return {Any}
///@desc This function is used to obtain one value from an array, by processing all array elements one-by-one.
///
///You supply a Callback Method which runs for each element of the given array. The callback function must return a value, which is passed to the next element's callback, in its previous argument.
///
///The first time this callback function is called, its previous argument is set to the value of the first array element (or the element at the given offset), and the first iteration of the array range is skipped, meaning callbacks start from the second element in the given range.
///
///If you supply the init parameter to this function, the first iteration will not be skipped, and the previous parameter for the first element's callback will be set to the init value you passed.
///
///When the callback function returns a value, it's carried over into the next iteration. This process is repeated, until the given array (or the provided range) has been fully iterated. The function returns the value obtained from the final element's callback.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_reduce.htm
function array_reduce(array, reducer, init=undefined, offset=0, length=infinity) {
	var result = init ?? array[(offset < 0) ? array_length(array)+offset : offset];
	LTS_ARRAY_LOOP {
		if (i == iFrom && is_undefined(init)) continue;
		result = reducer(result, array[i], i);
	}
	return result;
}