///@func lts_array_polyfill_test_array_first()
///@desc Test array_first polyfill.

function lts_array_polyfill_test_array_first(){
	#region Basic tests
	assert_equal(array_first([]), undefined, "array_first 0")
	assert_equal(array_first([5]), 5, "array_first 1");
	assert_equal(array_first([6, 7, 8]), 6, "array_first 2");
	#endregion
}
