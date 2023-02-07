///@func lts_array_polyfill_test_array_find_index()
///@desc Test array_find_index polyfill.

function lts_array_polyfill_test_array_find_index(){
	var finder = function(v) {
		return v == 9;
	};

	#region Basic tests
	assert_equal(array_find_index([9], finder), 0, "array_find_index found 1");
	assert_equal(array_find_index([1, 9, 6], finder), 1, "array_find_index found 2");
	assert_equal(array_find_index([1], finder), -1, "array_find_index not found 1");
	assert_equal(array_find_index([3, 5], finder), -1, "array_find_index not found 2");
	assert_equal(array_find_index([], finder), -1, "array_find_index nullary");
	#endregion
	
	#region Offset and range tests
	assert_equal(array_find_index([1, 9, 6], finder, 1), 1, "array_find_index offset found 1");
	assert_equal(array_find_index([1, 9, 6], finder, -2), 1, "array_find_index offset found 2");
	assert_equal(array_find_index([1, 9, 6, 9, 7], finder, 1, 3), 1, "array_find_index range found 1");
	assert_equal(array_find_index([1, 9, 6, 9, 7], finder, -2, -3), 3, "array_find_index range found 2");
	assert_equal(array_find_index([9, 3, 5], finder, 1), -1, "array_find_index offset not found 1");
	assert_equal(array_find_index([9, 3, 5], finder, -2), -1, "array_find_index offset not found 2");
	assert_equal(array_find_index([1, 3, 5, 9], finder, 1, 2), -1, "array_find_index range not found 1");
	assert_equal(array_find_index([9, 3, 5, 8], finder, -2, -2), -1, "array_find_index range not found 2");
	#endregion
}