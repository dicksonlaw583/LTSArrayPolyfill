///@func lts_array_polyfill_test_array_filter()
///@desc Test array_filter polyfill.

function lts_array_polyfill_test_array_filter(){
	var isEven = function(n) {
		return n % 2 == 0;
	};
	
	#region Basic tests
	assert_equal(array_filter([2], isEven), [2], "array_filter true 1");
	assert_equal(array_filter([2, 4, 6], isEven), [2, 4, 6], "array_filter true 2");
	assert_equal(array_filter([1], isEven), [], "array_filter false 1");
	assert_equal(array_filter([2, 5], isEven), [2], "array_filter false 2");
	assert_equal(array_filter([3, 5], isEven), [], "array_filter false 3");
	assert_equal(array_filter([], isEven), [], "array_filter nullary");
	#endregion
	
	#region Offset and range tests
	assert_equal(array_filter([1, 4, 6], isEven, 1), [4, 6], "array_filter offset true 1");
	assert_equal(array_filter([1, 4, 6], isEven, -2), [4, 6], "array_filter offset true 2");
	assert_equal(array_filter([1, 4, 6, 7], isEven, 1, 2), [4, 6], "array_filter range true 1");
	assert_equal(array_filter([1, 4, 6, 7], isEven, -2, -2), [6, 4], "array_filter range true 2");
	assert_equal(array_filter([1, 3, 6], isEven, 1), [6], "array_filter offset false 1");
	assert_equal(array_filter([1, 3, 6], isEven, -2), [6], "array_filter offset false 2");
	assert_equal(array_filter([1, 2, 3, 6, 9], isEven, 1, 3), [2, 6], "array_filter range false 1");
	assert_equal(array_filter([1, 2, 3, 6, 9], isEven, -2, -3), [6, 2], "array_filter range false 2");
	#endregion
}
