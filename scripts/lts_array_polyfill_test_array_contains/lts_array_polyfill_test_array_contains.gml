///@func lts_array_polyfill_test_array_contains
///@desc Test array_contains polyfill.

function lts_array_polyfill_test_array_contains(){
	#region Basic tests
	assert(array_contains([2], 2), "array_contains true 1");
	assert(array_contains([1, 5, 6], 5), "array_contains true 2");
	assert_fail(array_contains([1], 2), "array_contains false 1");
	assert_fail(array_contains([3, 5], 2), "array_contains false 2");
	assert_fail(array_contains([], 0), "array_contains nullary");
	#endregion
	
	#region Offset and range tests
	assert(array_contains([1, 5, 6], 5, 1), "array_contains offset true 1");
	assert(array_contains([1, 5, 6], 5, -2), "array_contains offset true 2");
	assert(array_contains([1, 5, 6, 7], 5, 1, 2), "array_contains range true 1");
	assert(array_contains([1, 5, 6, 7], 5, -2, -2), "array_contains range true 2");
	assert_fail(array_contains([1, 3, 5], 1, 1), "array_contains offset false 1");
	assert_fail(array_contains([1, 3, 5], 1, -2), "array_contains offset false 2");
	assert_fail(array_contains([1, 3, 5, 8], 1, 1, 2), "array_contains range false 1");
	assert_fail(array_contains([1, 3, 5, 8], 8, -2, -2), "array_contains range false 2");
	#endregion
}