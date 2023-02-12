///@func lts_array_polyfill_test_array_shuffle()
///@desc Test array_shuffle polyfill.

function lts_array_polyfill_test_array_shuffle(){
	random_set_seed(0);
	var fixture = new LTSArrayPolyfill_TestArray([]);
	var result = [];

	#region Unitary tests
	assert_equal(array_shuffle([]), [], "array_shuffle 0");
	assert_equal(array_shuffle([2]), [2], "array_shuffle 1");
	#endregion

	#region Basic tests
	fixture = new LTSArrayPolyfill_TestArray([2, 4, 6, 8, 10]);
	result = array_shuffle(fixture.array);
	assert_not_equal(result, [2, 4, 6, 8, 10], "array_shuffle 2a");
	assert_equal(fixture.array, fixture.template, "array_shuffle 2b");
	array_sort(result, true);
	assert_equal(result, [2, 4, 6, 8, 10], "array_shuffle 2c");
	#endregion
	
	#region Offset and range tests
	fixture = new LTSArrayPolyfill_TestArray([1, 4, 5, 6, 7, 8, 9])
	result = array_shuffle(fixture.array, 1);
	assert_not_equal(result, [4, 5, 6, 7, 8, 9], "array_shuffle offset 1a");
	assert_equal(fixture.array, fixture.template, "array_shuffle offset 1b");
	array_sort(result, true);
	assert_equal(result, [4, 5, 6, 7, 8, 9], "array_shuffle offset 1c");

	fixture = new LTSArrayPolyfill_TestArray([1, 4, 5, 6, 7, 8, 9])
	result = array_shuffle(fixture.array, -6);
	assert_not_equal(result, [4, 5, 6, 7, 8, 9], "array_shuffle offset 2a");
	assert_equal(fixture.array, fixture.template, "array_shuffle offset 2b");
	array_sort(result, true);
	assert_equal(result, [4, 5, 6, 7, 8, 9], "array_shuffle offset 2c");

	fixture = new LTSArrayPolyfill_TestArray([1, 4, 5, 6, 7, 8, 9])
	result = array_shuffle(fixture.array, 1, 5);
	assert_not_equal(result, [4, 5, 6, 7, 8], "array_shuffle offset 3a");
	assert_equal(fixture.array, fixture.template, "array_shuffle offset 3b");
	array_sort(result, true);
	assert_equal(result, [4, 5, 6, 7, 8], "array_shuffle offset 3c");

	fixture = new LTSArrayPolyfill_TestArray([1, 4, 5, 6, 7, 8, 9])
	result = array_shuffle(fixture.array, -2, -5);
	assert_not_equal(result, [4, 5, 6, 7, 8], "array_shuffle offset 4a");
	assert_equal(fixture.array, fixture.template, "array_shuffle offset 4b");
	array_sort(result, true);
	assert_equal(result, [4, 5, 6, 7, 8], "array_shuffle offset 4c");
	#endregion
}