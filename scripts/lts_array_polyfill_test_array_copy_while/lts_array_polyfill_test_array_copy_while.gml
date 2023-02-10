///@func lts_array_polyfill_test_array_copy_while()
///@desc Test array_copy_while polyfill.

function lts_array_polyfill_test_array_copy_while() {
	var isReal = function(v) {
		return is_real(v);
	};

	#region Basic tests
	assert_equal(array_copy_while([], isReal), [], "array_copy_while 0");
	assert_equal(array_copy_while([2], isReal), [2], "array_copy_while 1");
	assert_equal(array_copy_while([2, 4, 6, 8], isReal), [2, 4, 6, 8], "array_copy_while 2");
	#endregion

	#region Offset and range tests
	assert_equal(array_copy_while([1, 4, 5, 6, "", 8], isReal, 1), [4, 5, 6], "array_copy_while offset 1");
	assert_equal(array_copy_while([1, 4, 5, 6, "", 8], isReal, -5), [4, 5, 6], "array_copy_while offset 2");
	assert_equal(array_copy_while([1, 4, 5, "", 7], isReal, 1, 4), [4, 5], "array_copy_while range 1");
	assert_equal(array_copy_while([1, "", 6, 7, 1], isReal, -2, -4), [7, 6], "array_copy_while range 2");
	assert_equal(array_copy_while([1, "", 6, 7, 1], isReal, -2, -infinity), [7, 6], "array_copy_while range 3");
	#endregion
}