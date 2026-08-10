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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.1/Actions.xcframework.zip",
            checksum: "ea14a6d4cc742d56b6842afe1ef79f13c91a71b15a8b41c52e4581fccb5bee81"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.1/Centraal.xcframework.zip",
            checksum: "5ce9d141dcc0a6199ff11bd1aa2690fa6faf7182bbaf73a0776e1e4db5a3c034"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.1/HTTPii.xcframework.zip",
            checksum: "8766072c8afed451158a0313cd74c83911bbbc4e984a83090fe55f74651c611a"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.1/Measurements.xcframework.zip",
            checksum: "f67854d50c6f8b50a6652edf92b0793e6696189452fa326a2f2ef6d70af7eedd"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
