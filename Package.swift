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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.2/Actions.xcframework.zip",
            checksum: "ac732c6f7e6c12d0c5b086055fb53374be1af22ea5aab9e83ad78605cd61debf"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.2/Centraal.xcframework.zip",
            checksum: "51cf19d08e9a2bb3d9ff24b3287539080c9215beb81b64688fec9238d0b70f91"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.2/HTTPii.xcframework.zip",
            checksum: "af27604f89734e57af3bdfb22058ecd5c146c6f7bc4fdb270ed71145abe87063"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.2/Measurements.xcframework.zip",
            checksum: "7716672313e65ee7b73929b8cc0b6cf1e908af39a754f092755f60c78cf268a9"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
