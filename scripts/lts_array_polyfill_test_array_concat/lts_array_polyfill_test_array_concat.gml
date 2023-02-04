///@func lts_array_polyfill_test_array_concat
///@desc Test array_concat polyfill.

function lts_array_polyfill_test_array_concat(){
	#region Basic tests
	assert_equal(array_concat([0, 1, 2], [3, 4]), [0, 1, 2, 3, 4], "array_concat 1");
	assert_equal(array_concat([0], [], [1, 2], [], [], [3]), [0, 1, 2, 3], "array_concat 2");
	#endregion
}