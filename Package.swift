// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "ActionsSDK",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "ActionsSDK",
            targets: ["ActionsSDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "Actions",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.1/Actions.xcframework.zip",
            checksum: "0a1489634c629b1ecd9c235e61983a272fcf6dc136d6df3f46154ab6fc45a95e"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.1/Centraal.xcframework.zip",
            checksum: "5f4baa08a7d05006afdd848f81960de51d477c60e4337bf42cafc4add78c796e"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.1/HTTPii.xcframework.zip",
            checksum: "56c2e215b6f0c48916b449e5811a5a81c3559e8e1bef1b79d7bdab3fee9c9839"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.1/Measurements.xcframework.zip",
            checksum: "886c2b9644edff0c2fadeaf5033f931dd94304aac86617ddab882297809ed32a"
        ),
        .target(
            name: "ActionsSDK",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
