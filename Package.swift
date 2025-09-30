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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.4/Actions.xcframework.zip",
            checksum: "e72b682f47c055940158968ceb241f673199114aabceba15fe7dd86db888bd26"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.4/Centraal.xcframework.zip",
            checksum: "384f168e0fa0249b7eb426397517f3da98f5555549c19e539abb931f1656c6df"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.4/HTTPii.xcframework.zip",
            checksum: "d1afc61ed094297baebd20adb4cde49dce5e72c471189766cb004e428f7fb018"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.4/Measurements.xcframework.zip",
            checksum: "e1e5b9148c4f3e875c5aa522a802661e38e07825fe1b3a063ecdea29527c18db"
        ),
        .target(
            name: "ActionsSDK",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
