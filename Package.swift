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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.3/Actions.xcframework.zip",
            checksum: "1ed1205e0307eea94507a9931f873cf9ca39034641260520fb1b988fa7a4a28e"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.3/Centraal.xcframework.zip",
            checksum: "66e436408d29822ed907a128d6f04de69e10620d32a91cb32b6202bdcf9899e3"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.3/HTTPii.xcframework.zip",
            checksum: "52585ac7031de100316a2851e1ed6a65b7bd94abbf0de938a6a012a8def5dcab"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.3/Measurements.xcframework.zip",
            checksum: "76b59b13aee5863cdf54e9064b9ee67ca776d96b76de3877ee431a7780c70383"
        ),
        .target(
            name: "ActionsSDK",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
