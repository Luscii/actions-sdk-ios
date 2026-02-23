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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0/Actions.xcframework.zip",
            checksum: "89788c2b5c91e2f50cc28eb9dae1caa652fce542b6b6b81d3d7f39f0150774ba"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0/Centraal.xcframework.zip",
            checksum: "3a8cb8a783230b38dc4da99b33240a5fbb26c670c9d6b93438e730f8b6ba4b2f"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0/HTTPii.xcframework.zip",
            checksum: "843fcf5854399322cc5339a32d1e07271f92acc052e58f14cb6f83256bab70dc"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0/Measurements.xcframework.zip",
            checksum: "e9fd8bb8607f7bcfa8a1dd0bd90fc309adfed7f44865a967181c9862cfb86bf6"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
