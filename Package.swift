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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0/Actions.xcframework.zip",
            checksum: "dea2f0b339c6bfd67d2c7ef10e1122762fcc0230e357730211810a83d0d2f3b6"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0/Centraal.xcframework.zip",
            checksum: "c9ebf47f6333e1c2ee5ed141fe2af2cca8fc6cc67fd4920c74c78816a6ba7a63"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0/HTTPii.xcframework.zip",
            checksum: "6d8f5f705f2299351b98d08df6661d914d25504735c247058c692bc2bc9b7771"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0/Measurements.xcframework.zip",
            checksum: "5adee7419547da64cccd6c902605ee6db60de73ac3fa086822a3b3c44a4ec1d4"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
