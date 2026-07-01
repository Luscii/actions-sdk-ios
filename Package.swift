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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0-rc.1/Actions.xcframework.zip",
            checksum: "00d4d0a5280c97595dd8380b78819413bbc05cceb28978c276ce80973fc11a15"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0-rc.1/Centraal.xcframework.zip",
            checksum: "99d6bd2d5c1f74244c2bb59d09e86123837b38718f188dbfd97f4c2e774eaf28"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0-rc.1/HTTPii.xcframework.zip",
            checksum: "6d57314dd98ea55042af0b69ec0b589eda0ca3302cb96f6a3e309f16586e407b"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.3.0-rc.1/Measurements.xcframework.zip",
            checksum: "f75c7920444634dd732ea3a922290df6b3901f20b2f9dfc256b3d7363240cd07"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
