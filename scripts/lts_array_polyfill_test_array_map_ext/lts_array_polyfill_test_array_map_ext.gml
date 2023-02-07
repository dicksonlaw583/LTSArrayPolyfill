///@func lts_array_polyfill_test_array_map_ext()
///@desc Test array_map_ext polyfill.

function lts_array_polyfill_test_array_map_ext(){
	var fixture = new LTSArrayPolyfill_TestArray([]);
	var mapper = function(v, i) {
		return v*10+i;
	};
	
	#region Basic tests
	fixture = new LTSArrayPolyfill_TestArray([2]);
	assert_equal(array_map_ext(fixture.array, mapper), 1, "array_map_ext 1a");
	assert_equal(fixture.array, [20], "array_map_ext 1b");
	
	fixture = new LTSArrayPolyfill_TestArray([2, 4, 6]);
	assert_equal(array_map_ext(fixture.array, mapper), 3, "array_map_ext 2a");
	assert_equal(fixture.array, [20, 41, 62], "array_map_ext 2b");
	
	fixture = new LTSArrayPolyfill_TestArray([]);
	assert_equal(array_map_ext([], mapper), 0, "array_map_ext nullary a");
	assert_equal(fixture.array, [], "array_map_ext nullary b");
	#endregion
	
	#region Offset and range tests
	fixture = new LTSArrayPolyfill_TestArray([1, 4, 6]);
	assert_equal(array_map_ext(fixture.array, mapper, 1), 2, "array_map_ext offset 1a");
	assert_equal(fixture.array, [1, 41, 62], "array_map_ext offset 1b");
	fixture.reset();
	assert_equal(array_map_ext(fixture.array, mapper, -2), 2, "array_map_ext offset 2a");
	assert_equal(fixture.array, [1, 41, 62], "array_map_ext offset 2b");
	
	fixture = new LTSArrayPolyfill_TestArray([1, 4, 6, 7]);
	assert_equal(array_map_ext(fixture.array, mapper, 1, 2), 2, "array_map_ext range 1a");
	assert_equal(fixture.array, [1, 41, 62, 7], "array_map_ext range 1b");
	fixture.reset();
	assert_equal(array_map_ext(fixture.array, mapper, -2, -2), 2, "array_map_ext range 2a");
	assert_equal(fixture.array, [1, 41, 62, 7], "array_map_ext range 2b");
	
	fixture = new LTSArrayPolyfill_TestArray([1, 2, 3, 6, 9]);
	assert_equal(array_map_ext(fixture.array, mapper, 1, 3), 3, "array_map_ext range 3a");
	assert_equal(fixture.array, [1, 21, 32, 63, 9], "array_map_ext range 3b");
	fixture.reset();
	assert_equal(array_map_ext(fixture.array, mapper, -2, -4), 4, "array_map_ext range 4a");
	assert_equal(fixture.array, [10, 21, 32, 63, 9], "array_map_ext range 4b");
	#endregion
}