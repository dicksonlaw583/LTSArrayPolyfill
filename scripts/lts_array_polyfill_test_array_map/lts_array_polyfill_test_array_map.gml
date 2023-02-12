///@func lts_array_polyfill_test_array_map()
///@desc Test array_map polyfill.

function lts_array_polyfill_test_array_map(){
	var mapper = function(v, i) {
		return v*10+i;
	};
	
	#region Basic tests
	assert_equal(array_map([], mapper), [], "array_map 0");
	assert_equal(array_map([2], mapper), [20], "array_map 1");
	assert_equal(array_map([2, 4, 6], mapper), [20, 41, 62], "array_map 2");
	#endregion
	
	#region Offset and range tests
	assert_equal(array_map([1, 4, 6], mapper, 1), [41, 62], "array_map offset 1");
	assert_equal(array_map([1, 4, 6], mapper, -2), [41, 62], "array_map offset 2");
	assert_equal(array_map([1, 4, 6, 7], mapper, 1, 2), [41, 62], "array_map range 1");
	assert_equal(array_map([1, 4, 6, 7], mapper, -2, -2), [62, 41], "array_map range 2");
	#endregion
}