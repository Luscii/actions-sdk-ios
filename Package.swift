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
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/0.2.3/Actions.xcframework.zip",
            checksum: "b205ceb067f95e47daab6e520454438cde2ea996aeca661048e791d987533cbc"
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
