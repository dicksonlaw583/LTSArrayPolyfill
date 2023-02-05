///@func lts_array_polyfill_test_array_foreach()
///@desc Test array_foreach polyfill.

function lts_array_polyfill_test_array_foreach(){
	var spy = new LTSArrayPolyfill_TestSpy();
	
	#region Basic tests
	spy.clear();
	array_foreach([], spy.callback);
	assert_equal(spy.calls, [], "array_foreach 0");
	
	spy.clear();
	array_foreach([10], spy.callback);
	assert_equal(spy.calls, [[10, 0]], "array_foreach 1");
	
	spy.clear();
	array_foreach([4, 5, 6], spy.callback);
	assert_equal(spy.calls, [[4, 0], [5, 1], [6, 2]], "array_foreach 2");
	#endregion
	
	#region Offset and range tests
	spy.clear();
	array_foreach([1, 5, 6], spy.callback, 1);
	assert_equal(spy.calls, [[5, 1], [6, 2]], "array_foreach offset 1");
	
	spy.clear();
	array_foreach([1, 5, 6], spy.callback, -2)
	assert_equal(spy.calls, [[5, 1], [6, 2]], "array_foreach offset 2");
	
	spy.clear();
	array_foreach([1, 5, 6, 7], spy.callback, 1, 2);
	assert_equal(spy.calls, [[5, 1], [6, 2]], "array_foreach range 1");
	
	spy.clear();
	array_foreach([1, 5, 6, 7], spy.callback, -2, -2);
	assert_equal(spy.calls, [[6, 2], [5, 1]], "array_foreach range 2");
	#endregion
}