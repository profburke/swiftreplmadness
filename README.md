
## Swift REPL Madness

(*Thanks to @Pitometsu I was able to update this for Swift 4*)

In order to use a Swift package in the REPL you need to add a dynamic library product to `Package.swift` So, for example, if you have a package named `Sample`, you need to add the following to the package manifest:

    products: [

        . . .
        
        .library(
            name: "swiftreplmadness",
            type: .dynamic,
            targets: ["swiftreplmadness"]),

        . . .

    ],        

Now build as usual:

    swift build
    
Then to be able to use it from the REPL:

    swift -I .build/debug -L .build/debug -lSample

At this point, the REPL will start up and from its prompt, you can `import` the package and use it's public declarations:

    Welcome to Apple Swift version 4.0.2 (swiftlang-900.0.69.1....
      1> import Sample
      2> // do something with the Sample package...



#### See it in action

The code in this repo includes a sample package named `swiftreplmadness` which defines one public data type, `simplestruct`. You can use the included `Makefile` to build the package and start up the REPL. Simply change to the project's root directory and type `make`.


#### (Un)License

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>