// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "survicate-fullstory-integration",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "survicate-fullstory-integration",
            targets: ["survicate-fullstory-integration"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Survicate/survicate-ios-sdk", from: "8.0.0"),
        .package(url: "https://github.com/fullstorydev/fullstory-swift-package-ios", from: "1.60.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "survicate-fullstory-integration",
            dependencies: [
                .product(name: "Survicate", package: "survicate-ios-sdk"),
                .product(name: "FullStory", package: "fullstory-swift-package-ios")
            ]
        ),
        .testTarget(
            name: "survicate-fullstory-integrationTests",
            dependencies: ["survicate-fullstory-integration"]
        ),
    ]
)
