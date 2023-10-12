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
            targets: ["Actions"]
        )
    ],
    dependencies: [
//        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.8.0"),
//        .package(url: "https://github.com/SVGKit/SVGKit.git", from: "3.0.0"),
//        .package(url: "https://github.com/airbnb/lottie-ios.git", from: "4.3.0"),
//        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.0.0"),
//        .package(url: "https://github.com/hungrxyz/BetterCodable.git", from: "0.2.0"),
//        .package(url: "git@github.com:Luscii/httpii-ios.git", from: "0.1.0"),
//        .package(url: "git@github.com:Luscii/stiijl-ios.git", from: "0.2.0"),
//        .package(url: "git@github.com:Luscii/kraan-ios.git", from: "0.1.0")
    ],
    targets: [
        .binaryTarget(
            name: "Actions",
            url: "https://github.com/Luscii/actions-sdk-ios/releases/download/0.2.3/Actions.xcframework.zip",
            checksum: "cff9064cff856c0af4b91ee024e06d08fb35ef15d77b671a89bae464713d33f4"
        )
//        .target(
//            name: "ActionsTarget",
//            dependencies: [
//                .target(name: "Actions"),
//                .product(name: "Alamofire", package: "Alamofire"),
//                .product(name: "SVGKit", package: "SVGKit"),
//                .product(name: "Lottie", package: "lottie-ios"),
//                .product(name: "RxCocoa", package: "RxSwift"),
//                .product(name: "RxCocoaRuntime", package: "RxSwift"),
//                .product(name: "RxSwift", package: "RxSwift"),
//                .product(name: "RxRelay", package: "RxSwift"),
//                .product(name: "BetterCodable", package: "BetterCodable"),
//                .product(name: "HTTPii", package: "httpii-ios"),
//                .product(name: "Stiijl", package: "stiijl-ios"),
//                .product(name: "Kraan", package: "kraan-ios")
//            ]
//        )
    ]
)
