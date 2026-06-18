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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0-beta.1/Actions.xcframework.zip",
            checksum: "356dfc81417137eeb649b67235a0f00e15e8a8f7ea0d1734955ec24a63828928"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0-beta.1/Centraal.xcframework.zip",
            checksum: "e6177e95f064b73b82cdb8195d3b069ce2497117148d858353bf7338ad59de84"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0-beta.1/HTTPii.xcframework.zip",
            checksum: "84de115333e0d0e458f426c57d7d0c7ea5115469f513b15a725d5df70779517a"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0-beta.1/Measurements.xcframework.zip",
            checksum: "8d2c9eb28c00d7c2d8af2814aa94d420b5a36f886ec40f0999b999020edd1ad7"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
