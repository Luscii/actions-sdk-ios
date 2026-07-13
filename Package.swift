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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0-rc.2/Actions.xcframework.zip",
            checksum: "8d9528279d8552b73c3cc40c1326f0de7ee53d1b18b2d8d2243ccb8fd4499d18"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0-rc.2/Centraal.xcframework.zip",
            checksum: "24c6d65f282ca55fb550a435f19834dd6d2ee7ac9afcab0835a35da7091bbf85"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0-rc.2/HTTPii.xcframework.zip",
            checksum: "3ffc21598f87c97b1b160e5c901e88d5521bfa8919444b3cfa39fae9fb4095fe"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0-rc.2/Measurements.xcframework.zip",
            checksum: "7ff8828a65e2f1de40f1f0ae1ad3993700cae8634bae58ff8fb039c5ee197fc5"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
