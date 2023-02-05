///@func lts_array_polyfill_test_array_contains_ext
///@desc Test array_contains_ext polyfill.

function lts_array_polyfill_test_array_contains_ext(){	
	#region Basic matchSome tests
	assert(array_contains_ext([2], [2], false), "array_contains_ext matchSome true 1");
	assert(array_contains_ext([1, 5, 6], [0, 5], false), "array_contains_ext matchSome true 2");
	assert_fail(array_contains_ext([1], [2], false), "array_contains_ext matchSome false 1");
	assert_fail(array_contains_ext([3, 5], [0, 2], false), "array_contains_ext matchSome false 2");
	assert_fail(array_contains_ext([], [], false), "array_contains_ext matchSome nullary");
	#endregion
	
	#region matchSome offset and range tests
	assert(array_contains_ext([1, 5, 6], [0, 5], false, 1), "array_contains_ext matchSome offset true 1");
	assert(array_contains_ext([1, 5, 6], [0, 5], false, -2), "array_contains_ext matchSome offset true 2");
	assert(array_contains_ext([1, 5, 6, 7], [0, 5], false, 1, 2), "array_contains_ext matchSome range true 1");
	assert(array_contains_ext([1, 5, 6, 7], [0, 5], false, -2, -2), "array_contains_ext matchSome range true 2");
	assert_fail(array_contains_ext([1, 3, 5], [0, 1], false, 1), "array_contains_ext matchSome offset false 1");
	assert_fail(array_contains_ext([1, 3, 5], [0, 1], false, -2), "array_contains_ext matchSome offset false 2");
	assert_fail(array_contains_ext([1, 3, 5, 8], [0, 1], false, 1, 2), "array_contains_ext matchSome range false 1");
	assert_fail(array_contains_ext([1, 3, 5, 8], [0, 8], false, -2, -2), "array_contains_ext matchSome range false 2");
	#endregion
	
	#region Basic matchAll tests
	assert(array_contains_ext([2], [2], true), "array_contains_ext matchAll true 1");
	assert(array_contains_ext([1, 5, 6], [5, 6], true), "array_contains_ext matchAll true 2");
	assert_fail(array_contains_ext([1], [2], true), "array_contains_ext matchAll false 1");
	assert_fail(array_contains_ext([3, 5], [0, 2], true), "array_contains_ext matchAll false 2");
	assert_fail(array_contains_ext([3, 5], [3, 2], true), "array_contains_ext matchAll false 3");
	assert_fail(array_contains_ext([], [], true), "array_contains_ext matchAll nullary");
	#endregion
	
	#region matchAll offset and range tests
	assert(array_contains_ext([1, 5, 6], [5, 6], true, 1), "array_contains_ext matchAll offset true 1");
	assert(array_contains_ext([1, 5, 6], [5, 6], true, -2), "array_contains_ext matchAll offset true 2");
	assert(array_contains_ext([1, 5, 6, 7], [5, 6], true, 1, 2), "array_contains_ext matchAll range true 1");
	assert(array_contains_ext([1, 5, 6, 7], [5, 6], true, -2, -2), "array_contains_ext matchAll range true 2");
	assert_fail(array_contains_ext([1, 3, 5], [3, 1], true, 1), "array_contains_ext matchAll offset false 1");
	assert_fail(array_contains_ext([1, 3, 5], [3, 1], true, -2), "array_contains_ext matchAll offset false 2");
	assert_fail(array_contains_ext([1, 3, 5, 8], [5, 1], true, 1, 2), "array_contains_ext matchAll range false 1");
	assert_fail(array_contains_ext([1, 3, 5, 8], [5, 1], true, -2, -2), "array_contains_ext matchAll range false 2");
	#endregion
}