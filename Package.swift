// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HomeModuleDemo",
    products: [
        .library(
            name: "HomeModuleDemo",
            targets: ["HomeModuleDemo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1"))
    ],
    targets: [
        .target(
            name: "HomeModuleDemo",
            dependencies: ["SnapKit"]),
        .testTarget(
            name: "HomeModuleDemoTests",
            dependencies: ["HomeModuleDemo"]),
    ]
)
