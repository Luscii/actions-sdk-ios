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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.4.0-rc.1/Actions.xcframework.zip",
            checksum: "002edd4b8f321507a550589440cb6ac93c867346543e36b6ae2157cef071dc2c"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.4.0-rc.1/Centraal.xcframework.zip",
            checksum: "b7b26e7f954bcd3f3fdafa777f23054e5cad0bf7b835b698688e34855dc583a7"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.4.0-rc.1/HTTPii.xcframework.zip",
            checksum: "cbbe4169df9bd7b429b8246416ec36de6b9ce42020e690f81d15a15c48917d70"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.4.0-rc.1/Measurements.xcframework.zip",
            checksum: "d3e62606f6a44be00bd920e5153c1115c17c694d04c9f06c9534bd5e960aa63c"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
