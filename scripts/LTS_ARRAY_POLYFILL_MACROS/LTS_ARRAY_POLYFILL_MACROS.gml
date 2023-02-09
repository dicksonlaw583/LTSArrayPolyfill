#macro LTS_ARRAY_LOOP var n = array_length(array), iStep = sign(length), iFrom = (offset < 0) ? n+offset : offset, iTo = clamp(iFrom+length-iStep, 0, n-1), iStopAt = iTo+iStep; for (var i = iFrom; i != iStopAt && i >= 0 && i < n; i += iStep)
#macro LTS_SKIP_DELETE_ITERATION --n; if (iStep == 1) { --i; --iStopAt; }