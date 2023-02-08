///@func array_shuffle_ext(array, [offset], [length])
///@arg {Array} array The array to use
///@arg {Real} [offset] OPTIONAL The offset, or starting index, in the array. Setting a negative value will count from the end of the array.
///@arg {Real} [length] OPTIONAL The number of elements to traverse. A negative value will traverse the array backwards.
///@return {Real}
///@desc This function shuffles the existing array in place, i.e. it modifies (or mutates) the existing array.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_shuffle_ext.htm
function array_shuffle_ext(array, offset=0, length=infinity) {
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