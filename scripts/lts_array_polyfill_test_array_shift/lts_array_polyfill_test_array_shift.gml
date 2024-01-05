///@func lts_array_polyfill_test_array_shift()
///@desc Test array_shift polyfill.

function lts_array_polyfill_test_array_shift(){
	var fixture;
	
	#region Basic tests
	fixture = [];
	assert_equal(array_shift(fixture), undefined, "array_shift 0a");
	assert_equal(fixture, [], "array_shift 0b");
	
	fixture = [5];
	assert_equal(array_shift(fixture), 5, "array_shift 1a");
	assert_equal(fixture, [], "array_shift 1b");
	
	fixture = [6, 7, 8];
	assert_equal(array_shift(fixture), 6, "array_shift 2a");
	assert_equal(fixture, [7, 8], "array_shift 2b");
	#endregion
}
