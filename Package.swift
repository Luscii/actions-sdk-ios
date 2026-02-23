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
            checksum: "ad3ca6e9d406f322328558cdfb52b202c05fb8e51de195fc5bc1f1da6747c0b9"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.1/Centraal.xcframework.zip",
            checksum: "f8686a7f6196dfa784da172e20a239c70223221763a19f9229ceb7026131f4d6"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.1/HTTPii.xcframework.zip",
            checksum: "37866f00b0d871dbc96612013e35498d26a8c43b43503a69e65e388a88a6ba59"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.1/Measurements.xcframework.zip",
            checksum: "f4c21a0bce615e1b29dc59a5a1473c8ba1bc345e4209e05f1a6653f5a4bc021a"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
