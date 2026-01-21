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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.1/Actions.xcframework.zip",
            checksum: "c0f528febdfcdf5522a1869700b30f234ec887d298593ced542023b5337b6fb8"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.1/Centraal.xcframework.zip",
            checksum: "578c4e0c0414bcb0fea7ae69a8b9768c7f85114778599442041924a8387fb97d"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.1/HTTPii.xcframework.zip",
            checksum: "d672d0bbeb624766255d0a991b32263e6460002f755799c1030a8f38faf602dd"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.1/Measurements.xcframework.zip",
            checksum: "4b9751c58192bf644b9d8adab5e07231609e5e07876320887a1d06ede5c3fbce"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
