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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.1-rc.2/Actions.xcframework.zip",
            checksum: "a8155d591c6782c845bae5ad3a256930e4cb68afba2f6f3e339e9c699590de31"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.1-rc.2/Centraal.xcframework.zip",
            checksum: "87a419c9fef253190ad56d448d2d5acb915c180389f074e2cd64141b7bcf84ab"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.1-rc.2/HTTPii.xcframework.zip",
            checksum: "a0f75a48af9312117f799c5db88889a67c34a57a8903c5d51cc85ab22cd05564"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.1-rc.2/Measurements.xcframework.zip",
            checksum: "c03c6b69087679ea0c39edb98088fb0b4f6b6129734d4a55e937753c457b88c4"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
