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
       .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.6.0")
    ],
    targets: [
        .binaryTarget(
            name: "Actions",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/0.2.3/Actions.xcframework.zip",
            checksum: "cff9064cff856c0af4b91ee024e06d08fb35ef15d77b671a89bae464713d33f4"
        ),
        .target(
           name: "Rx",
           dependencies: [
               .product(name: "RxCocoa", package: "RxSwift"),
               .product(name: "RxSwift", package: "RxSwift"),
               .product(name: "RxRelay", package: "RxSwift")
           ]
       )
    ]
)
