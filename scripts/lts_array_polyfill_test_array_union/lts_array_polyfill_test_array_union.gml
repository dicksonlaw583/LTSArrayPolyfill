///@func lts_array_polyfill_test_array_union
///@desc Test array_union polyfill.

function lts_array_polyfill_test_array_union(){
	var result = [];
	
	#region Basic tests
	assert_equal(array_union([], []), [], "array_union nullary");
	
	result = array_union([0, 1, 5], [2, 3, 4]);
	array_sort(result, true);
	assert_equal(result, [0, 1, 2, 3, 4, 5], "array_union 1");
	result = array_union([0, 1], [], [2, 1, 0], [1, 3]);
	array_sort(result, true);
	assert_equal(result, [0, 1, 2, 3], "array_union 2");
	result = array_union([2, 1, 0], [4, 2, 1], [0, 1, 2, 3]);
	array_sort(result, true);
	assert_equal(result, [0, 1, 2, 3, 4], "array_union 3");
	#endregion
}