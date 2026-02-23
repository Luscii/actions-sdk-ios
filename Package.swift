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
            checksum: "8ce56b02954b70f39bdebe0d0396ddb0ee6c3568698ca93d54ed8998b979434f"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.2/Centraal.xcframework.zip",
            checksum: "ef50dce448e8127bd707ff87bb1991805247257f00239af410620e4a8055472d"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.2/HTTPii.xcframework.zip",
            checksum: "ce26eb7a6f3c2ccc1acc947358126dc5f22ab7659483cb90ab94ed0d6bbe9571"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.1.0-rc.2/Measurements.xcframework.zip",
            checksum: "52c15e1200a19fd1f534cc899d2e8df8d249074c04155dcd9aa309db195fda54"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
