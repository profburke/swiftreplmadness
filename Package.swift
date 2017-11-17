// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "swiftreplmadness",
    products: [
        .library(
            name: "swiftreplmadness",
            type: .dynamic,
            targets: ["swiftreplmadness"]),
    ],
    targets: [
        .target(
            name: "swiftreplmadness",
            dependencies: []),
    ]
)
