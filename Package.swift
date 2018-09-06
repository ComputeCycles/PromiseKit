// swift-tools-version:4.0

import PackageDescription

let pkg = Package(name: "PromiseKit")
pkg.products = [
    .library(name: "PromiseKit", targets: ["PromiseKit"]),
]

let pmk: Target = .target(name: "PromiseKit")
pmk.path = "Sources"
pmk.exclude = [
    "AnyPromise.swift",
    "Deprecations.swift"
]
pkg.swiftLanguageVersions = [3, 4]
pkg.targets = [
    pmk,
    .testTarget(name: "A+", dependencies: ["PromiseKit"]),
    .testTarget(name: "CorePromise", dependencies: ["PromiseKit"], path: "Tests/CorePromise"),
]
