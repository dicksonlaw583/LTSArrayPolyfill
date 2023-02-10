///@func lts_array_polyfill_test_array_unique()
///@desc Test array_unique polyfill.

function lts_array_polyfill_test_array_unique(){
	var result = [];
	
	#region Basic tests
	assert_equal(array_unique([]), [], "array_unique nullary");
	assert_equal(array_unique([2]), [2], "array_unique distinct 1");
	
	result = array_unique([2, 4, 6]);
	array_sort(result, true);
	assert_equal(result, [2, 4, 6], "array_unique distinct 2");
	
	result = array_unique([1, 1, 1]);
	array_sort(result, true);
	assert_equal(result, [1], "array_unique duplicated 1");
	
	result = array_unique([2, 5, 2]);
	array_sort(result, true);
	assert_equal(result, [2, 5], "array_unique duplicated 2");
	#endregion
	
	#region Offset and range tests
	result = array_unique([1, 4, 5], 1);
	array_sort(result, true);
	assert_equal(result, [4, 5], "array_unique offset distinct 1");
	
	result = array_unique([1, 4, 5], -2);
	array_sort(result, true);
	assert_equal(result, [4, 5], "array_unique offset distinct 2");
	
	result = array_unique([1, 4, 6, 7], 1, 2);
	array_sort(result, true);
	assert_equal(result, [4, 6], "array_unique range distinct 1");
	
	result = array_unique([1, 4, 6, 7], -2, -2);
	array_sort(result, true);
	assert_equal(result, [4, 6], "array_unique range distinct 2");
	
	assert_equal(array_unique([1, 6, 6], 1), [6], "array_unique offset duplicated 1");
	assert_equal(array_unique([1, 6, 6], -2), [6], "array_unique offset duplicated 2");
	
	result = array_unique([1, 2, 3, 2, 9], 1, 3);
	array_sort(result, true);
	assert_equal(result, [2, 3], "array_unique range duplicated 1");
	
	result = array_unique([1, 2, 2, 6, 9], -2, -3);
	array_sort(result, true);
	assert_equal(result, [2, 6], "array_unique range duplicated 2");
	#endregion
}