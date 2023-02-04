///@func lts_array_polyfill_test_array_any
///@desc Test array_any polyfill.

function lts_array_polyfill_test_array_any(){
	var isEven = function(n) {
		return n % 2 == 0;
	};
	
	#region Basic tests
	assert(array_any([2], isEven), "array_any true 1");
	assert(array_any([1, 5, 6], isEven), "array_any true 2");
	assert_fail(array_any([1], isEven), "array_any false 1");
	assert_fail(array_any([3, 5], isEven), "array_any false 2");
	assert_fail(array_any([], isEven), "array_any nullary");
	#endregion
	
	#region Offset and range tests
	assert(array_any([1, 5, 6], isEven, 1), "array_any offset true 1");
	assert(array_any([1, 5, 6], isEven, -2), "array_any offset true 2");
	assert(array_any([1, 5, 6, 7], isEven, 1, 2), "array_any range true 1");
	assert(array_any([1, 5, 6, 7], isEven, -2, -2), "array_any range true 2");
	assert_fail(array_any([1, 3, 5], isEven, 1), "array_any offset false 1");
	assert_fail(array_any([1, 3, 5], isEven, -2), "array_any offset false 2");
	assert_fail(array_any([1, 3, 5, 8], isEven, 1, 2), "array_any range false 1");
	assert_fail(array_any([1, 3, 5, 8], isEven, -2, -2), "array_any range false 2");
	#endregion
}