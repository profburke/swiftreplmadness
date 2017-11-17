
demo: main
	@echo ""
	@echo "After the REPL starts, copy and paste the folloiwng code: "
	@echo ""
	@echo "import swiftreplmadness"
	@echo "let s = simplestruct(simplevar: \"boo\")"
	@echo ""
	swift -I .build/debug -L .build/debug -lswiftreplmadness

main: Sources/swiftreplmadness/swiftreplmadness.swift
	swift build

clean:
	${RM} -f Sources/*~

distclean: clean
	${RM} -rf .build

.phony: clean distclean

