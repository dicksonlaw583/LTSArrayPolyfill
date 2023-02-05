///@func lts_array_polyfill_test_array_create_ext()
///@desc Test array_create_ext polyfill.

function lts_array_polyfill_test_array_create_ext(){
	#region Basic tests
	assert_equal(array_create_ext(5, function(n) { return n; }), [0, 1, 2, 3, 4], "array_create_ext 1");
	assert_equal(array_create_ext(2, function(n) { return string(n+10); }), ["10", "11"], "array_create_ext 2");
	#endregion
}