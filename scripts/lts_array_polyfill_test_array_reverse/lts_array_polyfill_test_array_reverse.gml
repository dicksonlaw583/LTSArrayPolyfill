///@func lts_array_polyfill_test_array_reverse()
///@desc Test array_reverse polyfill.

function lts_array_polyfill_test_array_reverse(){
	#region Basic tests
	assert_equal(array_reverse([]), [], "array_reverse 0");
	assert_equal(array_reverse([2]), [2], "array_reverse 1");
	assert_equal(array_reverse([2, 4, 6, 8]), [8, 6, 4, 2], "array_reverse 2");
	assert_equal(array_reverse([2, 4, 6, 8, 10]), [10, 8, 6, 4, 2], "array_reverse 3");
	#endregion
	
	#region Offset and range tests
	assert_equal(array_reverse([1, 4, 5, 6, 7], 1), [7, 6, 5, 4], "array_reverse offset 1");
	assert_equal(array_reverse([1, 4, 5, 6, 7], -3), [7, 6, 5], "array_reverse offset 2");
	assert_equal(array_reverse([1, 4, 5, 6, 7], 1, 3), [6, 5, 4], "array_reverse range 1");
	assert_equal(array_reverse([4, 5, 6, 7, 1], -2, -4), [4, 5, 6, 7], "array_reverse range 2");
	#endregion
}