// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MetaDeps",
    platforms: [
        .macOS("10.15")
    ],
    products: [
        .library(
            name: "MetaDeps",
            targets: ["MetaDeps"]),
        .executable(
            name: "MetaDepsTestApp",
            targets: ["MetaDepsTestApp"]),
    ],
    dependencies: [
        .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", from: "8.0.0"),
        .package(name: "Promises", url: "https://github.com/google/promises.git", from: "2.0.0"),
        .package(name: "SwiftyJSON", url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.0"),
        .package(name: "Sentry", url: "https://github.com/getsentry/sentry-cocoa", from: "7.2.2"),
        .package(name: "GRDB", url: "https://github.com/groue/GRDB.swift", from: "5.10.0"),
        .package(name: "Kingfisher", url: "https://github.com/onevcat/Kingfisher.git", from: "5.15.8"),
        .package(name: "AXSwift", url: "https://github.com/move37-com/AXSwift", from: "0.3.1"),
        .package(name: "Alamofire", url: "https://github.com/Alamofire/Alamofire", from: "4.8.0"),
        .package(name: "AlamofireImage", url: "https://github.com/Alamofire/AlamofireImage", from: "3.5.2"),
    ],
    targets: [
        .target(
            name: "MetaDeps",
            dependencies: [
                .product(name: "FirebaseAuth", package: "Firebase"),
                .product(name: "FirebaseDatabase", package: "Firebase"),
                .product(name: "FirebaseFunctions", package: "Firebase"),
                .product(name: "FirebaseStorage", package: "Firebase"),
                .product(name: "FirebaseDatabaseSwift-Beta", package: "Firebase"),
                .product(name: "Promises", package: "Promises"),
                .product(name: "SwiftyJSON", package: "SwiftyJSON"),
                .product(name: "Sentry", package: "Sentry"),
                .product(name: "GRDB", package: "GRDB"),
                .product(name: "Kingfisher", package: "Kingfisher"),
                .product(name: "KingfisherSwiftUI", package: "Kingfisher"),
                .product(name: "AXSwift", package: "AXSwift"),
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "AlamofireImage", package: "AlamofireImage"),
            ]),
        .testTarget(
            name: "MetaDepsTests",
            dependencies: ["MetaDeps"]),
        .target(
            name: "MetaDepsTestApp",
            dependencies: ["MetaDeps"]
        )
    ]
)
