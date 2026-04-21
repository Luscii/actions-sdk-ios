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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.2.0-rc.1/Actions.xcframework.zip",
            checksum: "0fe44d1d9bc1bc4048289f45c3d940ff57a8648573ce5782c1e1c73ce955c1b6"
        ),
        .binaryTarget(
            name: "Centraal",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.2.0-rc.1/Centraal.xcframework.zip",
            checksum: "d15e4897a28b04ccec0aaa07e32daf41fda98120fbfc894b6d1843c1c6039c37"
        ),
        .binaryTarget(
            name: "HTTPii",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.2.0-rc.1/HTTPii.xcframework.zip",
            checksum: "228cbc81d196c1961e06e620f40c571e43783fe4428534be883c42976d47df57"
        ),
        .binaryTarget(
            name: "Measurements",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/2.2.0-rc.1/Measurements.xcframework.zip",
            checksum: "6f4e85dc9f8e0c2933eca6766f56ab32e94017fca70c3cd5bcbf892c59983f08"
        ),
        .target(
            name: "ActionsKit",
            dependencies: ["Actions", "Centraal", "HTTPii", "Measurements"]
        ),
    ]
)
