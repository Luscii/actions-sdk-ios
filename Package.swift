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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.2.0-rc.2/Actions.xcframework.zip",
            checksum: "4d8e39c01510f7f3bf1cbb224c9226cb225ecd7085145079703f110e1f3be221"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.2.0-rc.2/Centraal.xcframework.zip",
            checksum: "7b6314a2e05373eaadbab7f53ed88ff949e29068e64d7027458602680494163b"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.2.0-rc.2/HTTPii.xcframework.zip",
            checksum: "02b27910ff3a63cb2bf25e9d81e35e600700f1756af323e3049ef83acb8a9f1b"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.2.0-rc.2/Measurements.xcframework.zip",
            checksum: "faca61238c3b24b47009d7946238c573d8311eae65bdea70958466cd9c6d7686"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
