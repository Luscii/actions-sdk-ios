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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.3/Actions.xcframework.zip",
            checksum: "b31d56027a63dd6d26c2fb3405849de8adaecb8146395ec9abc49555e1727b01"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.3/Centraal.xcframework.zip",
            checksum: "5d66b4820c953d2c08ce1119d8ff368bbd81551d23b453957d9ba15e526b0f97"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.3/HTTPii.xcframework.zip",
            checksum: "89bb09f7454d4b8573417fcf24497956a4dfb802debe33a43a4c47f2bb59a0c9"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.3/Measurements.xcframework.zip",
            checksum: "83ec101df55089960367377a23e69af4c7644e36940472f35e682a06e5701680"
        ),
        .target(
            name: "ActionsSDK",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
