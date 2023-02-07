///@func lts_array_polyfill_test_array_reduce()
///@desc Test array_reduce polyfill.

function lts_array_polyfill_test_array_reduce(){
	var reducer = function(prev, next) {
		return 10*prev+next;
	};
	
	#region Basic tests
	assert_equal(array_reduce([], reducer, 0), 0, "array_reduce 0");
	assert_equal(array_reduce([2], reducer), 2, "array_reduce 1a");
	assert_equal(array_reduce([2], reducer, 1), 12, "array_reduce 1a");
	assert_equal(array_reduce([2, 4, 6], reducer), 246, "array_reduce 2a");
	assert_equal(array_reduce([2, 4, 6], reducer, 1), 1246, "array_reduce 2b");
	#endregion
	
	#region Offset and range tests
	assert_equal(array_reduce([9, 4, 6], reducer, 0, 1), 46, "array_reduce offset 1");
	assert_equal(array_reduce([9, 4, 6], reducer, 0, -2), 46, "array_reduce offset 2");
	assert_equal(array_reduce([9, 4, 6, 7], reducer, 1, 1, 2), 146, "array_reduce range 1");
	assert_equal(array_reduce([9, 4, 6, 7], reducer, 1, -2, -2), 164, "array_reduce range 2");
	#endregion
}