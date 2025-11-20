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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.7/Actions.xcframework.zip",
            checksum: "040013be3c11c76f51c7b5d0d872c75329562d437b869534629065df5a209419"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.7/Centraal.xcframework.zip",
            checksum: "33a24b7cb398b3cb99c7a2da88ef5a2cbaf9e8c53d6a885d0ed729da012eec43"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.7/HTTPii.xcframework.zip",
            checksum: "b24a7fcc8d1db5f6c3fca966b2bf46fbf701836821016aef037f579fa48bf352"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.7/Measurements.xcframework.zip",
            checksum: "eda6660272662d381f7785ac413f92f4c030faaf417f2824966427b91b9af8aa"
        ),
        .target(
            name: "ActionsSDK",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
