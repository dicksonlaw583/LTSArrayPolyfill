///@func lts_array_polyfill_test_array_unique_ext()
///@desc Test array_unique_ext polyfill.

function lts_array_polyfill_test_array_unique_ext(){
	var fixture = new LTSArrayPolyfill_TestArray([]);

	#region Unitary tests
	fixture = new LTSArrayPolyfill_TestArray([]);
	assert_equal(array_unique_ext(fixture.array), 0, "array_unique_ext 0a");
	assert_equal(fixture.array, [], "array_unique_ext 0b");
	fixture = new LTSArrayPolyfill_TestArray([2]);
	assert_equal(array_unique_ext(fixture.array), 1, "array_unique_ext 1a");
	assert_equal(fixture.array, [2], "array_unique_ext 1b");
	#endregion

	#region Basic tests
	fixture = new LTSArrayPolyfill_TestArray([2, 2, 4, 6, 4]);
	assert_equal(array_unique_ext(fixture.array), 3, "array_unique_ext 2a");
	assert_equal(fixture.array, [2, 4, 6, 6, 4], "array_unique_ext 2b");
	#endregion
	
	#region Offset and range tests
	fixture = new LTSArrayPolyfill_TestArray([1, 2, 2, 4, 6, 4]);
	assert_equal(array_unique_ext(fixture.array, 1), 3, "array_unique_ext offset 1a");
	assert_equal(fixture.array, [1, 2, 4, 6, 6, 4], "array_unique_ext offset 1b");

	fixture = new LTSArrayPolyfill_TestArray([1, 2, 2, 4, 6, 4]);
	assert_equal(array_unique_ext(fixture.array, -5), 3, "array_unique_ext offset 2a");
	assert_equal(fixture.array, [1, 2, 4, 6, 6, 4], "array_unique_ext offset 2b");

	fixture = new LTSArrayPolyfill_TestArray([1, 2, 2, 4, 6, 4, 9]);
	assert_equal(array_unique_ext(fixture.array, 1, 5), 3, "array_unique_ext offset 3a");
	assert_equal(fixture.array, [1, 2, 4, 6, 6, 4, 9], "array_unique_ext offset 3b");

	fixture = new LTSArrayPolyfill_TestArray([1, 6, 4, 2, 2, 4, 9]);
	assert_equal(array_unique_ext(fixture.array, -2, -5), 3, "array_unique_ext offset 4a");
	assert_equal(fixture.array, [1, 6, 4, 6, 2, 4, 9], "array_unique_ext offset 4b");
}