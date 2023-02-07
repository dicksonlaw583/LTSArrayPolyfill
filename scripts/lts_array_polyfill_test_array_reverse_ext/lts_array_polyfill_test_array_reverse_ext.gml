///@func lts_array_polyfill_test_array_reverse_ext()
///@desc Test array_reverse_ext polyfill.

function lts_array_polyfill_test_array_reverse_ext(){
	var fixture = new LTSArrayPolyfill_TestArray([]);

	#region Basic tests
	fixture = new LTSArrayPolyfill_TestArray([]);
	assert_equal(array_reverse_ext(fixture.array), 0, "array_reverse_ext 0a");
	assert_equal(fixture.array, [], "array_reverse_ext 0b");
	fixture = new LTSArrayPolyfill_TestArray([2]);
	assert_equal(array_reverse_ext(fixture.array), 1, "array_reverse_ext 1a");
	assert_equal(fixture.array, [2], "array_reverse_ext 1b");
	fixture = new LTSArrayPolyfill_TestArray([2, 4, 6, 8]);
	assert_equal(array_reverse_ext(fixture.array), 4, "array_reverse_ext 2a");
	assert_equal(fixture.array, [8, 6, 4, 2], "array_reverse_ext 2b");
	fixture = new LTSArrayPolyfill_TestArray([2, 4, 6, 8, 10]);
	assert_equal(array_reverse_ext(fixture.array), 5, "array_reverse_ext 3a");
	assert_equal(fixture.array, [10, 8, 6, 4, 2], "array_reverse_ext 3b");
	#endregion
	
	#region Offset and range tests
	fixture = new LTSArrayPolyfill_TestArray([1, 4, 5, 6, 7]);
	assert_equal(array_reverse_ext(fixture.array, 1), 4, "array_reverse_ext offset 1a");
	assert_equal(fixture.array, [1, 7, 6, 5, 4], "array_reverse_ext offset 1b")
	fixture = new LTSArrayPolyfill_TestArray([1, 4, 5, 6, 7]);
	assert_equal(array_reverse_ext(fixture.array, -3), 3, "array_reverse_ext offset 2a");
	assert_equal(fixture.array, [1, 4, 7, 6, 5], "array_reverse_ext offset 2b");
	fixture = new LTSArrayPolyfill_TestArray([1, 4, 5, 6, 7]);
	assert_equal(array_reverse_ext(fixture.array, 1, 3), 3, "array_reverse_ext range 1a");
	assert_equal(fixture.array, [1, 6, 5, 4, 7], "array_reverse_ext range 1b");
	fixture = new LTSArrayPolyfill_TestArray([4, 5, 6, 7, 1]);
	assert_equal(array_reverse_ext(fixture.array, -2, -4), 4, "array_reverse_ext range 2a");
	assert_equal(fixture.array, [7, 6, 5, 4, 1], "array_reverse_ext range 2b");
	#endregion
}