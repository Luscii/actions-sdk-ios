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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.1-rc.1/Actions.xcframework.zip",
            checksum: "9e5de7038340a72231279bb1e3d1f099b6225b5267bc86399cb792bff1bac99b"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.1-rc.1/Centraal.xcframework.zip",
            checksum: "39d60c3f5bc14dfd8fadc27878d034276b191fef2992efa451a59fdc9d028c81"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.1-rc.1/HTTPii.xcframework.zip",
            checksum: "82e4df2a0e93671a883b8591447640cb5c1a46e2a1ac5215241f76c292188737"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.1-rc.1/Measurements.xcframework.zip",
            checksum: "9aea9300b1c241c1a74f8bd75e6d31529abf6c94abd8b0216065ffa7beb2ef95"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
