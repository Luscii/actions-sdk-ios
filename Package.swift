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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.1/Actions.xcframework.zip",
            checksum: "b163cef4b7c53e41e554b24b39c598253595ca8824976b4f346808232193fa6e"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.1/Centraal.xcframework.zip",
            checksum: "13d2f06801716cb95e82cbfb5b3d7243edd8c12d6039669dd303fdcae781cc05"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.1/HTTPii.xcframework.zip",
            checksum: "38822aa51469cd6aa73cee88be253248b82802c4b5273e8cc449db3abc8d8f63"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-rc.1/Measurements.xcframework.zip",
            checksum: "280a62db15996eb32dd126520a70f42fbb4f47591376465dd940589722744a48"
        ),
        .target(
            name: "ActionsSDK",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
