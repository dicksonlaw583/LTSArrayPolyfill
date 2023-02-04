///@func lts_array_polyfill_test_all()
///@return {Bool}
///@desc Test the LTS array polyfill functions.

function lts_array_polyfill_test_all() {
	global.__test_fails__ = 0;
	var timeA, timeB;
	timeA = current_time;
	
	/* v Tests here v */
	lts_array_polyfill_test_array_all();
	lts_array_polyfill_test_array_any();
	lts_array_polyfill_test_array_concat();
	lts_array_polyfill_test_array_contains();
	/* ^ Tests here ^ */
	
	timeB = current_time;
	show_debug_message("LTS Array Polyfill tests done in " + string(timeB-timeA) + "ms.");
	return global.__test_fails__ == 0;
}
