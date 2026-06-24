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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0-beta.2/Actions.xcframework.zip",
            checksum: "b7c92c3797a82373fa9a7e58025102fa124142c100f3a806bd7d58a5710f8db2"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0-beta.2/Centraal.xcframework.zip",
            checksum: "0937ec15befee8cfc6504fa8eea4a95d40f55587387dbf42bab805092a6b42af"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0-beta.2/HTTPii.xcframework.zip",
            checksum: "78a10f1490cfd1e1e1559e6f831af37c950c2bffead8be04d0b378a1155d605d"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0-beta.2/Measurements.xcframework.zip",
            checksum: "65160b21bae0f2e10c8b9da3645664bcf699f433e9aa13811d20e8983d6119e3"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
