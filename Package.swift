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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.5/Actions.xcframework.zip",
            checksum: "4a95c545a504c22b9f0a1d505f73a9dc08934ca9408bfff22ca842db43c69630"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.5/Centraal.xcframework.zip",
            checksum: "dd3e902bf294b142f2c6282e14a4b195b6789440cdf56271435dbce65e2f7919"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.5/HTTPii.xcframework.zip",
            checksum: "889e4003d07b65e4c863795273056099a98c7d51b49f93ae98b3aeabb4b438f7"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.5/Measurements.xcframework.zip",
            checksum: "e5ded9c232f23a28f02ee0a9dc28e59f69ddb576f54d0f4da3e4ea68d9a8993f"
        ),
        .target(
            name: "ActionsSDK",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
