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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.1/Actions.xcframework.zip",
            checksum: "a0ed0308abf1bf6bcaba410d125933ab4fef5d49c750e49a5b44765b79bfbf8c"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.1/Centraal.xcframework.zip",
            checksum: "85652a3636d8d9ffe767d93e343f95a6ca59b81e6865f646ee6e25e0a6e93dbd"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.1/HTTPii.xcframework.zip",
            checksum: "e550a45092cc68662ce952eeb8f700679a5fd3f689c95af18e44de09e95618f2"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.1/Measurements.xcframework.zip",
            checksum: "7641802c1452c030d95ad9ab1a7b9621d08e943e407bfc1fa931a49e7e6c8a24"
        ),
        .target(
            name: "ActionsSDK",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
