all: \
	libfswatch.nim \
	private/libfswatch_types.nim \
	private/cevent.nim \
	private/cfilter.nim \
	private/cmonitor.nim \
	private/error.nim

libfswatch.nim: headers_c2nimready/libfswatch.h
	@~/.nimble/bin/c2nim --out:$@ $<

private/%.nim: headers_c2nimready/%.h
	@~/.nimble/bin/c2nim --out:$@ $<
