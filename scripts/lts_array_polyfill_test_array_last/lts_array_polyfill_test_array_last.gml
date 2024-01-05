///@func lts_array_polyfill_test_array_last()
///@desc Test array_last polyfill.

function lts_array_polyfill_test_array_last(){
	#region Basic tests
	assert_equal(array_last([]), undefined, "array_last 0");
	assert_equal(array_last([5]), 5, "array_last 1");
	assert_equal(array_last([6, 7, 8]), 8, "array_last 2");
	#endregion
}
