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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.2/Actions.xcframework.zip",
            checksum: "03e72d14ab8d0409a9752c00adc2f5d090a45958db1802202ab74cff80de86b4"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.2/Centraal.xcframework.zip",
            checksum: "8a52a4f4d3aab351fbf89517bc3b979711ac4eec2b0849f1301405e2177bd721"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.2/HTTPii.xcframework.zip",
            checksum: "b885f7071a2d9252f0bc63f36f763343d1614ac3bdda4679737d933289930597"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.2/Measurements.xcframework.zip",
            checksum: "cbc2f76694f0e7240975c6a319b135a637cc26d044a35f84041f1e65cec27900"
        ),
        .target(
            name: "ActionsSDK",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
