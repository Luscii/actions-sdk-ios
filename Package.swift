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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/0.2.2/Actions.xcframework.zip",
            checksum: "c0acbfa67c481339a2d80f12e6f9bdccf04c45e3279967f723d77989e6f4ed09"
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
