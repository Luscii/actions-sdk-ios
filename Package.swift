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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.2/Actions.xcframework.zip",
            checksum: "edb59fd377b92f23f397ab74a5578fa22daa5b24ddf71c0ee151af10ffac3f6f"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.2/Centraal.xcframework.zip",
            checksum: "245b99aa26da55026edbb6b138f1a96f4426e6647dea44c46d9b35daadd18262"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.2/HTTPii.xcframework.zip",
            checksum: "422a04f66807eb3534ba0b2e2c09ecd245bf7b946942dd556d960e293ddcfa32"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.2/Measurements.xcframework.zip",
            checksum: "669820cfdc5646f811df7456a9039793a02cba00da8e8f2ea0fbe42278157436"
        ),
        .target(
            name: "ActionsSDK",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
