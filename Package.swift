// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DCX_SCRTY",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DCX_SCRTY_PACKAGE",
            targets: ["DCX_SCRTY_PACKAGE", "DCX_SCRTY"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DCX_SCRTY_PACKAGE"),
        .testTarget(
            name: "DCX_SCRTY_PACKAGETests",
            dependencies: ["DCX_SCRTY_PACKAGE"]),
        .binaryTarget(name: "DCX_SCRTY", path: "Artifacts/DCX_SCRTY.xcframework")
    ]
)
