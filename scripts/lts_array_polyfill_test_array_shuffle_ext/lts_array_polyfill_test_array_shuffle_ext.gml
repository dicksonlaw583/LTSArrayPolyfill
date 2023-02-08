///@func lts_array_polyfill_test_array_shuffle_ext()
///@desc Test array_shuffle_ext polyfill.

function lts_array_polyfill_test_array_shuffle_ext(){
	random_set_seed(0);
	var fixture = new LTSArrayPolyfill_TestArray([]);

	#region Unitary tests
	fixture = new LTSArrayPolyfill_TestArray([]);
	array_shuffle_ext(fixture.array);
	assert_equal(fixture.array, [], "array_shuffle_ext 0");
	fixture = new LTSArrayPolyfill_TestArray([2]);
	array_shuffle_ext(fixture.array);
	assert_equal(fixture.array, [2], "array_shuffle_ext 1");
	#endregion

	#region Basic tests
	fixture = new LTSArrayPolyfill_TestArray([2, 4, 6, 8, 10]);
	array_shuffle_ext(fixture.array);
	assert_not_equal(fixture.array, fixture.template, "array_shuffle_ext 2a");
	array_sort(fixture.array, true);
	assert_equal(fixture.array, fixture.template, "array_shuffle_ext 2b")
	#endregion
	
	#region Offset and range tests
	fixture = new LTSArrayPolyfill_TestArray([1, 4, 5, 6, 7, 8, 9])
	array_shuffle_ext(fixture.array, 1);
	assert_not_equal(fixture.array, fixture.template, "array_shuffle_ext offset 1a");
	assert_equal(fixture.array[0], 1, "array_shuffle_ext offset 1b");
	array_sort(fixture.array, true);
	assert_equal(fixture.array, fixture.template, "array_shuffle_ext offset 1c");

	fixture = new LTSArrayPolyfill_TestArray([1, 4, 5, 6, 7, 8, 9])
	array_shuffle_ext(fixture.array, -6);
	assert_not_equal(fixture.array, fixture.template, "array_shuffle_ext offset 2a");
	assert_equal(fixture.array[0], 1, "array_shuffle_ext offset 2b");
	array_sort(fixture.array, true);
	assert_equal(fixture.array, fixture.template, "array_shuffle_ext offset 2c");

	fixture = new LTSArrayPolyfill_TestArray([1, 4, 5, 6, 7, 8, 9])
	array_shuffle_ext(fixture.array, 1, 5);
	assert_not_equal(fixture.array, fixture.template, "array_shuffle_ext offset 3a");
	assert_equal([fixture.array[0], fixture.array[6]], [1, 9], "array_shuffle_ext offset 3b");
	array_sort(fixture.array, true);
	assert_equal(fixture.array, fixture.template, "array_shuffle_ext offset 3c");

	fixture = new LTSArrayPolyfill_TestArray([1, 4, 5, 6, 7, 8, 9])
	array_shuffle_ext(fixture.array, -2, -5);
	assert_not_equal(fixture.array, fixture.template, "array_shuffle_ext offset 4a");
	assert_equal([fixture.array[0], fixture.array[6]], [1, 9], "array_shuffle_ext offset 4b");
	array_sort(fixture.array, true);
	assert_equal(fixture.array, fixture.template, "array_shuffle_ext offset 4c");
	#endregion
}