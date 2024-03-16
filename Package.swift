// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RefdsWelcome",
    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "RefdsWelcome",
            targets: ["RefdsWelcome"]),
    ],
    targets: [
        .target(
            name: "RefdsWelcome"),
    ]
)
