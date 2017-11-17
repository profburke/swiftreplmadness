
demo: main
	swift -I .build/debug -L .build/debug -lswiftreplmadness

main: Sources/swiftreplmadness/swiftreplmadness.swift
	swift build

clean:
	${RM} -f Sources/*~

distclean: clean
	${RM} -rf .build

.phony: clean distclean

