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
	lts_array_polyfill_test_array_contains_ext();
	lts_array_polyfill_test_array_copy_while();
	lts_array_polyfill_test_array_create_ext();
	lts_array_polyfill_test_array_find_index();
	lts_array_polyfill_test_array_first();
	lts_array_polyfill_test_array_foreach();
	lts_array_polyfill_test_array_filter();
	lts_array_polyfill_test_array_filter_ext();
	lts_array_polyfill_test_array_get_index();
	lts_array_polyfill_test_array_intersection();
	lts_array_polyfill_test_array_last();
	lts_array_polyfill_test_array_map();
	lts_array_polyfill_test_array_map_ext();
	lts_array_polyfill_test_array_reduce();
	lts_array_polyfill_test_array_reverse();
	lts_array_polyfill_test_array_reverse_ext();
	lts_array_polyfill_test_array_shift();
	lts_array_polyfill_test_array_shuffle();
	lts_array_polyfill_test_array_shuffle_ext();
	lts_array_polyfill_test_array_union();
	lts_array_polyfill_test_array_unique();
	lts_array_polyfill_test_array_unique_ext();
	/* ^ Tests here ^ */
	
	timeB = current_time;
	show_debug_message("LTS Array Polyfill tests done in " + string(timeB-timeA) + "ms.");
	return global.__test_fails__ == 0;
}
