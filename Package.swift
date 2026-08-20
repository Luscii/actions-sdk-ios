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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.4.0/Actions.xcframework.zip",
            checksum: "09e47a0bd6eef90b143a3caf5dc5f4eec436bc837f30ee996fc294846669ab24"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.4.0/Centraal.xcframework.zip",
            checksum: "f5f69906b4f41bb2673c9837238365bc374c4d46ccf35a1f86cde0848e572429"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.4.0/HTTPii.xcframework.zip",
            checksum: "38ec7a6778d619dad3919114691f11fb334fbe17ecd00d1e8b02e66b468697ef"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.4.0/Measurements.xcframework.zip",
            checksum: "73573d7614de24485d8d882405c8cc70584932ab5303c5da2f8338ece575ef6c"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
