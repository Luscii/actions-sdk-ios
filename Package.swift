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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.1/Actions.xcframework.zip",
            checksum: "33aa17fe27885cb7aa6a096f859fd928490473f6f0bf6361f8694fe12d3c391b"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.1/Centraal.xcframework.zip",
            checksum: "81e32a1fc08d4357ec42afa12be9bdafa6a4c093e9436c390b91ce1f9cf59d9b"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.1/HTTPii.xcframework.zip",
            checksum: "ece1ad7d47ec48ae141763cf0e49820c78e10cbef9982c34436e63f0eb17fda8"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.1/Measurements.xcframework.zip",
            checksum: "4c2caff51c50f438f1f0b7b8df9f0bf74e276b05f576138357c7e8e69b3ab74c"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
