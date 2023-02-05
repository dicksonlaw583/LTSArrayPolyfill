///@func LTSArrayPolyfill_TestSpy
///@desc A spy class with a trackable callback method.
function LTSArrayPolyfill_TestSpy() constructor {
	calls = [];
	
	static clear = function() {
		array_resize(calls, 0);
	};
	
	callback = function() {
		var entry = array_create(argument_count);
		for (var i = argument_count-1; i >= 0; --i) {
			entry[i] = argument[i];
		}
		array_push(calls, entry);
	};
}
