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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.3/Actions.xcframework.zip",
            checksum: "87efdaf027c1cdeebc9b61edb30e45e8eed5a9aae22bd9859c462d67767d835d"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.3/Centraal.xcframework.zip",
            checksum: "7374eb9345cafafd1a10724ef3b99ed7eaea06bc115f3ea49ced5cc0b2e50c6a"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.3/HTTPii.xcframework.zip",
            checksum: "89b288a313c1541e2d35746cac18f09935547516221df104cd798a572b4d4364"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.3/Measurements.xcframework.zip",
            checksum: "33b8f9777905a779a86a3f74deeca11b2184c7103e4e8f5af8de8a5d3bddc83a"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
