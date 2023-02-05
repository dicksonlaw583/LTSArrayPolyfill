///@func lts_array_polyfill_test_array_get_index
///@desc Test array_get_index polyfill.

function lts_array_polyfill_test_array_get_index(){
	#region Basic tests
	assert_equal(array_get_index([2], 2), 0, "array_get_index found 1");
	assert_equal(array_get_index([1, 5, 6], 5), 1, "array_get_index found 2");
	assert_equal(array_get_index([1], 2), -1, "array_get_index not found 1");
	assert_equal(array_get_index([3, 5], 2), -1, "array_get_index not found 2");
	assert_equal(array_get_index([], 0), -1, "array_get_index nullary");
	#endregion
	
	#region Offset and range tests
	assert_equal(array_get_index([1, 5, 6], 5, 1), 1, "array_get_index offset found 1");
	assert_equal(array_get_index([1, 5, 6], 5, -2), 1, "array_get_index offset found 2");
	assert_equal(array_get_index([1, 5, 6, 5, 7], 5, 1, 3), 1, "array_get_index range found 1");
	assert_equal(array_get_index([1, 5, 6, 5, 7], 5, -2, -3), 3, "array_get_index range found 2");
	assert_equal(array_get_index([1, 3, 5], 1, 1), -1, "array_get_index offset not found 1");
	assert_equal(array_get_index([1, 3, 5], 1, -2), -1, "array_get_index offset not found 2");
	assert_equal(array_get_index([1, 3, 5, 8], 8, 1, 2), -1, "array_get_index range not found 1");
	assert_equal(array_get_index([1, 3, 5, 8], 1, -2, -2), -1, "array_get_index range not found 2");
	#endregion
}