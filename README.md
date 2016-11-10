
## Swift REPL Madness

In order to use a Swift package in the REPL you need to

1. build a shared library (this is not done by default)
1. pass the appropriate flags to the REPL

Look at the Makefile to see the necessary incantations.

#### Usage

From the command line, run `make`. This will both build the package
and start the REPL with the appropriate command-line flags.

Then use the functionality of the package. For example:

    Welcome to Apple Swift version 3.0 (swiftlang-800.0.46.2 clang-800.0.38). Type :help for assistance.
       1> import swiftreplmadness
       2> var g = simplestruct(simplevar: "Hello")
        g: swiftreplmadness.simplestruct = {
          text = "Hello, World!"
          simplevar = "Hello"
        }
       3> print(g.simplevar)
          Hello
       4>


