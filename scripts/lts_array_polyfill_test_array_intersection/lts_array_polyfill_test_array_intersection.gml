///@func lts_array_polyfill_test_array_intersection
///@desc Test array_intersection polyfill.

function lts_array_polyfill_test_array_intersection(){
	var result = [];
	
	#region Basic tests
	assert_equal(array_intersection([], []), [], "array_intersection nullary 1");
	assert_equal(array_intersection([0, 1, 2], [], [0, 1]), [], "array_intersection nullary 2");
	assert_equal(array_intersection([0, 1, 2], [3, 4, 5]), [], "array_intersection nullary 3");
	assert_equal(array_intersection([9, 8, 7], [8, 7, 6], [5, 4, 3]), [], "array_intersection nullary 4");
	
	result = array_intersection([0, 1, 2, 3], [2, 1, 0]);
	array_sort(result, true);
	assert_equal(result, [0, 1, 2], "array_intersection 1");
	result = array_intersection([0, 1, 2, 3], [2, 1, 0], [3, 2, 1]);
	array_sort(result, true);
	assert_equal(result, [1, 2], "array_intersection 2");
	#endregion
}