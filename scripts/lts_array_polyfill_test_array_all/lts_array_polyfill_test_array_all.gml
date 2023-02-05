///@func lts_array_polyfill_test_array_all()
///@desc Test array_all polyfill.

function lts_array_polyfill_test_array_all(){
	var isEven = function(n) {
		return n % 2 == 0;
	};
	
	#region Basic tests
	assert(array_all([2], isEven), "array_all true 1");
	assert(array_all([2, 4, 6], isEven), "array_all true 2");
	assert_fail(array_all([1], isEven), "array_all false 1");
	assert_fail(array_all([2, 5], isEven), "array_all false 2");
	assert(array_all([], isEven), "array_all nullary");
	#endregion
	
	#region Offset and range tests
	assert(array_all([1, 4, 6], isEven, 1), "array_all offset true 1");
	assert(array_all([1, 4, 6], isEven, -2), "array_all offset true 2");
	assert(array_all([1, 4, 6, 7], isEven, 1, 2), "array_all range true 1");
	assert(array_all([1, 4, 6, 7], isEven, -2, -2), "array_all range true 2");
	assert_fail(array_all([1, 3, 6], isEven, 1), "array_all offset false 1");
	assert_fail(array_all([1, 3, 6], isEven, -2), "array_all offset false 2");
	assert_fail(array_all([1, 3, 6, 8], isEven, 1, 2), "array_all range false 1");
	assert_fail(array_all([1, 3, 6, 8], isEven, -2, -2), "array_all range false 2");
	#endregion
}