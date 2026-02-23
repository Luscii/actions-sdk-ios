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
            checksum: "b12fd82e8c720b7993d6dac2ddbf25b1e9d2ffe9577bddce70a52ebe6f90de3b"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.3/Centraal.xcframework.zip",
            checksum: "2e0887d3a6704391866980be78fd75b90f8f368ce7da168b36f3c95347c06095"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.3/HTTPii.xcframework.zip",
            checksum: "cbb3033e404eae59d49d7004a0830a59c13dbe3bbd571da4208115bdf357ea77"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.3/Measurements.xcframework.zip",
            checksum: "6e8a926ded03e62e8a5285f30b8204ff7601c235da672334f44c32123814cc38"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
