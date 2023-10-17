// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Actions",
    platforms: [
        .iOS(.v14), 
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "Actions",
            targets: ["Actions", "Rx"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Luscii/rxc-ios.git", from: "6.6.0")
    ],
    targets: [
        .binaryTarget(
            name: "Actions",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/0.2.5/Actions.xcframework.zip",
            checksum: "f04cd5e2af394382f0ffe57621e846e3487a40f1b0facd79ffaa50557ca9e8c7"
        ),
        .target(
            name: "Rx",
            dependencies: [
               .product(name: "RxCocoa", package: "rxc-ios"),
               .product(name: "RxSwift", package: "rxc-ios"),
               .product(name: "RxRelay", package: "rxc-ios")
            ]
        )
    ]
)
