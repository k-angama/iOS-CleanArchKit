// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CleanArchKit",
    platforms: [
       .iOS(.v12)
     ],
    products: [
        .library(
            name: "CleanArchKit",
            targets: ["CleanArchKit"]),
    ],
    targets: [
        .target(
            name: "CleanArchKit"),
        .testTarget(
            name: "CleanArchKitTests",
            dependencies: ["CleanArchKit"]),
    ]
)
