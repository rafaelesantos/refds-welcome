// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RefdsWelcome",
    defaultLocalization: "pt",
    platforms: [
        .iOS(.v18),
        .macCatalyst(.v18),
        .macOS(.v15),
        .tvOS(.v18),
        .watchOS(.v11),
        .visionOS(.v2),
        .driverKit(.v24)
    ],
    products: [
        .library(
            name: "RefdsWelcome",
            targets: ["RefdsWelcome"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rafaelesantos/refds-shared.git", branch: "main"),
        .package(url: "https://github.com/rafaelesantos/refds-design-system.git", branch: "main")
    ],
    targets: [
        .target(
            name: "RefdsWelcome",
            dependencies: [
                .product(name: "RefdsShared", package: "refds-shared"),
                .product(name: "RefdsUI", package: "refds-design-system")
            ]),
    ]
)
