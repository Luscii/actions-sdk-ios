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
            checksum: "98c9551b1189024532a637146e15b4014f22596816ce28f799ab787fbfa36ba8"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0/Centraal.xcframework.zip",
            checksum: "47e9734df491b6e94349e98410e38b346835b9c254f44234f2c8e69ea40f7545"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0/HTTPii.xcframework.zip",
            checksum: "e357b405e43cbe833b848ccb1518b6ca2ba459ab652b56b87c935db2e8e53c9e"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0/Measurements.xcframework.zip",
            checksum: "fe5b441e98bf0fa4d7d9caf15561177903faf58fdfa937c1d135e68143c66147"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
