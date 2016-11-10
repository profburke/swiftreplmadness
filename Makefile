
demo: main
	swift -I .build/debug -L . -lswiftreplmadness

main: Sources/swiftreplmadness.swift
	swift build -Xswiftc -emit-library

clean:
	${RM} -f *~
	${RM} -f Sources/*~

distclean: clean
	${RM} -f libswiftreplmadness.dylib
	${RM} -rf libswiftreplmadness.dylib.dSYM
	${RM} -rf .build

.phony: clean distclean

