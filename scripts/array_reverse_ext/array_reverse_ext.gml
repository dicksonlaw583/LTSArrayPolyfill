///@func array_reverse_ext(array, [offset], [length])
///@arg {Array} array The array to use
///@arg {Real} [offset] OPTIONAL The offset, or starting index, in the array. Setting a negative value will count from the end of the array.
///@arg {Real} [length] OPTIONAL The number of elements to traverse. A negative value will traverse the array backwards.
///@return {Real}
///@desc This function is similar to array_reverse, but instead of returning a modified array, it modifies the original array that you passed into the function.
///
///By default, it reverse the whole array. You can reverse only a part of the array by supplying Offset And Length values.
///
///The function returns the number of elements that were modified in the array.
///
///https://manual.gamemaker.io/monthly/en/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_reverse_ext.htm
function array_reverse_ext(array, offset=0, length=infinity) {
	var nSwaps = 0;
	var revOffset = 0;
	LTS_ARRAY_LOOP {
		var i2 = iTo+revOffset;
		if (i == i2) {
			++nSwaps;
			break;
		}
		if (sign(i2-i) != iStep) break;
		if (array[i] != array[i2]) {
			var swapTemp = array[i];
			array[@i] = array[i2];
			array[@i2] = swapTemp;
			nSwaps += 2;
		}
		revOffset -= iStep;
	}
	return nSwaps;
}