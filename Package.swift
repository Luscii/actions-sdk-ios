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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.2.0-rc.3/Actions.xcframework.zip",
            checksum: "9b66b5b4b66d70c15b185034f4a2e3d08838aaab26c5dd32fdb9860f329f2671"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.2.0-rc.3/Centraal.xcframework.zip",
            checksum: "361b4293f65b2236a5cf8bc5e47e5004b9e047649bbc22fdace735e3329b96da"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.2.0-rc.3/HTTPii.xcframework.zip",
            checksum: "d05cb43cce15a679fbe557049e5c7dfc557a4bdffcebd5670a0e2b4246ab5109"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.2.0-rc.3/Measurements.xcframework.zip",
            checksum: "e0ec0972819eff8709c1696f8cade6d4c1fc7625fd8afa43ee7e38e6b11f03d8"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
