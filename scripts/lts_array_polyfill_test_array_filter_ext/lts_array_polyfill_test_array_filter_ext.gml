///@func lts_array_polyfill_test_array_filter_ext()
///@desc Test array_filter_ext polyfill.

function lts_array_polyfill_test_array_filter_ext(){
	var fixture = new LTSArrayPolyfill_TestArray([]);
	var isEven = function(n) {
		return n % 2 == 0;
	};
	
	#region Basic tests
	fixture = new LTSArrayPolyfill_TestArray([2]);
	assert_equal(array_filter_ext(fixture.array, isEven), 1, "array_filter_ext true 1a");
	assert_equal(fixture.array, [2], "array_filter_ext true 1b");
	
	fixture = new LTSArrayPolyfill_TestArray([2, 4, 6]);
	assert_equal(array_filter_ext(fixture.array, isEven), 3, "array_filter_ext true 2a");
	assert_equal(fixture.array, [2, 4, 6], "array_filter_ext true 2b");
	
	fixture = new LTSArrayPolyfill_TestArray([1]);
	assert_equal(array_filter_ext(fixture.array, isEven), 0, "array_filter_ext false 1a");
	assert_equal(fixture.array, [], "array_filter_ext false 1b");
	
	fixture = new LTSArrayPolyfill_TestArray([2, 5]);
	assert_equal(array_filter_ext(fixture.array, isEven), 1, "array_filter_ext false 2a");
	assert_equal(fixture.array, [2], "array_filter_ext false 2b");
	
	fixture = new LTSArrayPolyfill_TestArray([3, 5]);
	assert_equal(array_filter_ext(fixture.array, isEven), 0, "array_filter_ext false 3a");
	assert_equal(fixture.array, [], "array_filter_ext false 3b");
	
	fixture = new LTSArrayPolyfill_TestArray([]);
	assert_equal(array_filter_ext([], isEven), 0, "array_filter_ext nullary a");
	assert_equal(fixture.array, [], "array_filter_ext nullary b");
	#endregion
	
	#region Offset and range tests
	fixture = new LTSArrayPolyfill_TestArray([1, 4, 6]);
	assert_equal(array_filter_ext(fixture.array, isEven, 1), 2, "array_filter_ext offset true 1a");
	assert_equal(fixture.array, [1, 4, 6], "array_filter_ext offset true 1b");
	fixture.reset();
	assert_equal(array_filter_ext(fixture.array, isEven, -2), 2, "array_filter_ext offset true 2a");
	assert_equal(fixture.array, [1, 4, 6], "array_filter_ext offset true 2b");
	
	fixture = new LTSArrayPolyfill_TestArray([1, 4, 6, 7]);
	assert_equal(array_filter_ext(fixture.array, isEven, 1, 2), 2, "array_filter_ext range true 1a");
	assert_equal(fixture.array, [1, 4, 6, 7], "array_filter_ext range true 1b");
	fixture.reset();
	assert_equal(array_filter_ext(fixture.array, isEven, -2, -2), 2, "array_filter_ext range true 2a");
	assert_equal(fixture.array, [1, 4, 6, 7], "array_filter_ext range true 2b");
	
	fixture = new LTSArrayPolyfill_TestArray([1, 3, 6]);
	assert_equal(array_filter_ext(fixture.array, isEven, 1), 1, "array_filter_ext offset false 1a");
	assert_equal(fixture.array, [1, 6], "array_filter_ext offset false 1b");
	fixture.reset();
	assert_equal(array_filter_ext(fixture.array, isEven, -2), 1, "array_filter_ext offset false 2a");
	assert_equal(fixture.array, [1, 6], "array_filter_ext offset false 2b");
	
	fixture = new LTSArrayPolyfill_TestArray([1, 2, 3, 6, 9]);
	assert_equal(array_filter_ext(fixture.array, isEven, 1, 3), 2, "array_filter_ext range false 1a");
	assert_equal(fixture.array, [1, 2, 6, 9], "array_filter_ext range false 1b");
	fixture.reset();
	assert_equal(array_filter_ext(fixture.array, isEven, -2, -3), 2, "array_filter_ext range false 2a");
	assert_equal(fixture.array, [1, 2, 6, 9], "array_filter_ext range false 2b");
	fixture = new LTSArrayPolyfill_TestArray([1, 1, 3, 3, 5, 9, 9]);
	assert_equal(array_filter_ext(fixture.array, isEven, 2, 3), 0, "array_filter_ext range false 3a");
	assert_equal(fixture.array, [1, 1, 9, 9], "array_filter_ext range false 3b");
	fixture.reset();
	assert_equal(array_filter_ext(fixture.array, isEven, -3, -3), 0, "array_filter_ext range false 4a");
	assert_equal(fixture.array, [1, 1, 9, 9], "array_filter_ext range false 4b");
	#endregion
}