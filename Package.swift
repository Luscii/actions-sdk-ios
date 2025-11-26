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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.8/Actions.xcframework.zip",
            checksum: "b6e310b21bebf44d58552eeeab6efca09af9f3f99b3b0cd4b8f76f8ea568600a"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.8/Centraal.xcframework.zip",
            checksum: "539cc98f13a6125e45e68849fc4679b42015b4017bf32d1e800ee23c041464e0"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.8/HTTPii.xcframework.zip",
            checksum: "d32e51a49dca81dda9fe76dc1d42e049e6feb7789d80ad221c0bc61c176f2a32"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.8/Measurements.xcframework.zip",
            checksum: "1f59736ebab8a402a5f064e3656950e2e2f142c55a84340a15fec7830552be29"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
