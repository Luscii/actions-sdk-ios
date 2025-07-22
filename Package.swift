// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Actions",
    platforms: [
        .iOS(.v14), 
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "Actions",
            targets: ["Actions"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "Actions",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/1.3.2/Actions.xcframework.zip",
            checksum: "fa559d5c08a33bb8ed57a2a84ce2609ca7febb40a99ab757b26d2efac6d5770c"
        )
    ]
)
