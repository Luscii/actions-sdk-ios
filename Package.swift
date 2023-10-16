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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/0.2.1/Actions.xcframework.zip",
            checksum: "171331cf7de5f150f93e32d48d1df73c9ef46f4baba5abe91c5c4398aac0b066"
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
