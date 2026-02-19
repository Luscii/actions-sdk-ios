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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.4/Actions.xcframework.zip",
            checksum: "101e4cd1940c2506060efb971c462cf5b429db7bbe5428690af26b14662cf7b4"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.4/Centraal.xcframework.zip",
            checksum: "c3d8947d5d78a962cfcbb1262cab52a781f78fd67df9eb367990e8294ff0e970"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.4/HTTPii.xcframework.zip",
            checksum: "443ef08cee6764b1086bae4bd73dd253ad862892c5752e7b702590c83bf430a4"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.4/Measurements.xcframework.zip",
            checksum: "4e1b71044ebf376d60985d09c2616f836a6168e17f35f9ea3a95d4155d1a3e3c"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
