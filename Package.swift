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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0/Actions.xcframework.zip",
            checksum: "7ac7d9f5ba03b8c41020074ac39437c8f5414ca89919855a7af92692340d6807"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0/Centraal.xcframework.zip",
            checksum: "c250a8de74d290f13eb34d7e72ba983da640ace600d83e149a5035f8a9c933b2"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0/HTTPii.xcframework.zip",
            checksum: "bc13c5fa1ff15947fa5f9b415e6ddb6c9574d48b7dbec29f41cc9897de1c532a"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0/Measurements.xcframework.zip",
            checksum: "b50a9e57b4a2857470c2b502c907092eae687ba4363653147179beaf6519d1f7"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
