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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.5/Actions.xcframework.zip",
            checksum: "2e66d523a3b8febc20a8dba0b410901de00674df149c2fc2f36c8c626bd44c8c"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.5/Centraal.xcframework.zip",
            checksum: "8322e1ba40ad1a8fc41c7e180224ed34d2a6555162ad282eb89ed721c43c0e1f"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.5/HTTPii.xcframework.zip",
            checksum: "b011bacdc5652c5e68ee83ab84b423e72a1c67fb8395051233f1d352ac422b28"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.5/Measurements.xcframework.zip",
            checksum: "25ff2fb72d59d83a08b8a5f0e939ad0af20b6b2030de5a0a8b5a3af847f41022"
        ),
        .target(
            name: "ActionsSDK",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
