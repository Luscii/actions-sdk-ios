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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.4/Actions.xcframework.zip",
            checksum: "226714e90df02ea5ecfdf62e4b8da03d38e6c4e8f7239548771a73ed27287f0a"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.4/Centraal.xcframework.zip",
            checksum: "92a8ced72c6e61747bc34ef8a48c53bd272355f838f785b9dc5c8b61e455c979"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.4/HTTPii.xcframework.zip",
            checksum: "ebf92e750fa95566a1bd7e3c7ec5b238c98aaf1e66546001d2331fa7cd4afef8"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.0.0-beta.4/Measurements.xcframework.zip",
            checksum: "2b05202cccf38c1d851c65bdc372b907c750eb8be7f20ecdad559ae7bdcb3cdf"
        ),
        .target(
            name: "ActionsSDK",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
