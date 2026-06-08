// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "ActionsKit",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "ActionsKit",
            targets: ["ActionsKit"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "Actions",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.2.0/Actions.xcframework.zip",
            checksum: "f09c9c47dd2998f6f250e68e7bf8653e2304efa28c7134970ccf42bc42a7570d"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.2.0/Centraal.xcframework.zip",
            checksum: "32e806de4f362dba96a0dfd77ff6ceec7981416462048289c1e6583a35a57162"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.2.0/HTTPii.xcframework.zip",
            checksum: "1616f69221e3ba31dd2279d03bdccf348940f9c887d498d33ce9cfc8f003fe0f"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.2.0/Measurements.xcframework.zip",
            checksum: "6e9aa76728bee7b3051cb77f9d0f9454ef7097504401f06da3d7bc43d13accd3"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
