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
            name: "MetaDependencies",
            targets: ["MetaDependencies"])
    ],
    dependencies: [
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
            name: "MetaDependencies",
            dependencies: [
                "FirebaseAuth", 
                "FirebaseCore",
                "FirebaseDatabase",
                "FirebaseFunctions", 
                "FirebaseStorage",
    //            "FirebaseDatabaseSwift-Beta",
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
        // .binaryTarget(name: "AppAuth", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/GoogleSignIn/AppAuth.xcframework.zip", checksum: "f48149d7105bb6b5094042b283da26609dc0e88216109719c438702bbd750db2"),
        // .binaryTarget(name: "BoringSSL-GRPC", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseFirestore/BoringSSL-GRPC.xcframework.zip", checksum: "040879fb6f037f8943f3be556f622f35c773797cecdfc84bd11191c0d15502e9"),
        // .binaryTarget(name: "FirebaseABTesting", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebasePerformance/FirebaseABTesting.xcframework.zip", checksum: "be85f89f0ff31566b6aae3a27aee2892fc916d70cdf46fa835f0e3b017b24b89"),
        // .binaryTarget(name: "FirebaseAnalytics", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseAnalytics/FirebaseAnalytics.xcframework.zip", checksum: "91c56fa15ff8d1e3833732af7b5601637dc76af34a92b5c967b653bacde3b46b"),
        // .binaryTarget(name: "FirebaseAppCheck", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseAppCheck/FirebaseAppCheck.xcframework.zip", checksum: "683a528b2cacd08af38ffd1af30eb1e20545bf2a4f2e2bf2b9b498deb666bb72"),
        // .binaryTarget(name: "FirebaseAppDistribution", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseAppDistribution/FirebaseAppDistribution.xcframework.zip", checksum: "3ed8b6ca592c1176c15fad0391f5edc3f0d2be0dcd77fcafee50da6a71ce2712"),
        .binaryTarget(name: "FirebaseAuth", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseAuth/FirebaseAuth.xcframework.zip", checksum: "74157ee47108ad99f3b27d81e8567aa8ff438186510eb5b0ebb6fd038cc31fa0"),
        .binaryTarget(name: "FirebaseCore", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseAnalytics/FirebaseCore.xcframework.zip", checksum: "cc67fb121d7b8927c0e1dbadea055317c86aece304e58852be296b6de9e4e9ea"),
        // .binaryTarget(name: "FirebaseCoreDiagnostics", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseAnalytics/FirebaseCoreDiagnostics.xcframework.zip", checksum: "376109339849c7db3564396fc343c8b305e94203c587662612b4f5ec9cce6601"),
        // .binaryTarget(name: "FirebaseCrashlytics", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseCrashlytics/FirebaseCrashlytics.xcframework.zip", checksum: "29c1ea818310bce3ecf7f915a394874516128a49b89e12f18153b9004a467e69"),
        .binaryTarget(name: "FirebaseDatabase", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseDatabase/FirebaseDatabase.xcframework.zip", checksum: "8490d40b328694814b9e58a876d6edecc9b54c4dfe857043ecb9f2238991e159"),
        // .binaryTarget(name: "FirebaseDynamicLinks", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseDynamicLinks/FirebaseDynamicLinks.xcframework.zip", checksum: "7b5f0f9ecd25cd7ff072fb383dd3202241710f616973011d56ccfb8c539e4bfa"),
        // .binaryTarget(name: "FirebaseFirestore", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseFirestore/FirebaseFirestore.xcframework.zip", checksum: "56121b829d964a44b6eb6e0b3c4388b13370b6ff9fc20b2f7a16a41da20638ec"),
        .binaryTarget(name: "FirebaseFunctions", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseFunctions/FirebaseFunctions.xcframework.zip", checksum: "6fac41b3a3af3acb2b0c6b06bf3c8373c14f32d890d2024b9111e9b461b675d8"),
        // .binaryTarget(name: "FirebaseInAppMessaging", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseInAppMessaging/FirebaseInAppMessaging.xcframework.zip", checksum: "2366e99d5b6ccec90605e85506de700782cf69b22919d2762406fcf5faffbcc5"),
        // .binaryTarget(name: "FirebaseInstallations", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseAnalytics/FirebaseInstallations.xcframework.zip", checksum: "993018871ad0e455b53d1a43370034b071090821de5166dd16ce456b08f2a327"),
        // .binaryTarget(name: "FirebaseMLModelDownloader", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseMLModelDownloader/FirebaseMLModelDownloader.xcframework.zip", checksum: "1ee6a2ef971a18dc16588b39e689e59e3e7deddd45f95b94cd280897ea0e177b"),
        // .binaryTarget(name: "FirebaseMessaging", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseMessaging/FirebaseMessaging.xcframework.zip", checksum: "c9d618ca6433b1771519d6865a71d9e1850a6a4c9dc0eead72ca14c5ad4da8c0"),
        // .binaryTarget(name: "FirebasePerformance", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebasePerformance/FirebasePerformance.xcframework.zip", checksum: "d51619100a1fd35e0287d5c65e251f0f892b1a4e076eedc59ad5cc42a4a26829"),
        // .binaryTarget(name: "FirebaseRemoteConfig", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseRemoteConfig/FirebaseRemoteConfig.xcframework.zip", checksum: "8b84c0cd0947a8c224ab7f2376e5faf92c153cbf875a1ca4940477b1eb757bae"),
        .binaryTarget(name: "FirebaseStorage", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseStorage/FirebaseStorage.xcframework.zip", checksum: "2bcb20e17a47d9a9abc6656eb8c88b0fc67b614dc373d030bd08690d85a5195f"),
        // .binaryTarget(name: "GTMAppAuth", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/GoogleSignIn/GTMAppAuth.xcframework.zip", checksum: "6726f1064ad67918e128e5a312ccced5bccf20e23086841637570f3079cee9fe"),
        // .binaryTarget(name: "GTMSessionFetcher", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseAuth/GTMSessionFetcher.xcframework.zip", checksum: "ed1395500c2227c2f3fced812d4c6c4a3188a74aa530bea5273e98c1d958d5d1"),
        // .binaryTarget(name: "GoogleAppMeasurement", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseAnalytics/GoogleAppMeasurement.xcframework.zip", checksum: "f68710c5cc8aa438a3a9e03da791826c7f1e3d7c87d8b7d7bb96b41d74bcb2aa"),
        // .binaryTarget(name: "GoogleDataTransport", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseAnalytics/GoogleDataTransport.xcframework.zip", checksum: "06881c8d0eeaa70ad3ace87d3c531af6e79937f3fe434875c3c725219469c925"),
        // .binaryTarget(name: "GoogleMobileAds", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/Google-Mobile-Ads-SDK/GoogleMobileAds.xcframework.zip", checksum: "0d976142c63704bcde170fb4b34e377d49160069647fa55d8cebc1c23ef1cb4d"),
        // .binaryTarget(name: "GoogleSignIn", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/GoogleSignIn/GoogleSignIn.xcframework.zip", checksum: "505ec3c24e880342640e81ce95b2ae13b1b57d18ce9ceed0a37ac66b33b8244e"),
        // .binaryTarget(name: "GoogleUtilities", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseAnalytics/GoogleUtilities.xcframework.zip", checksum: "f9fbccb92ecc0b045650c688e657fa1384dfd31d728a0f5a5b4baeaa1911164b"),
        // .binaryTarget(name: "PromisesObjC", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseAnalytics/PromisesObjC.xcframework.zip", checksum: "c561c49dd36718094476606bf28af72210fbd5a06d35faa73a2200bf9dc03b30"),
        // .binaryTarget(name: "SwiftProtobuf", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseMLModelDownloader/SwiftProtobuf.xcframework.zip", checksum: "0a0b20036a3d5bc58413f0f24316a724c4b5dc728bb2569538387b0e4bef7a07"),
        // .binaryTarget(name: "UserMessagingPlatform", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/Google-Mobile-Ads-SDK/UserMessagingPlatform.xcframework.zip", checksum: "e79fa5a5613548829f6a8fd0756cb47c1c3c367773ea796013249c0284fc88bf"),
        // .binaryTarget(name: "abseil", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseFirestore/abseil.xcframework.zip", checksum: "62e69f13596443ec2d8b85d76640cb2370a460b185811476d44ffe71c924aa38"),
        // .binaryTarget(name: "gRPC-C++", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseFirestore/gRPC-C++.xcframework.zip", checksum: "61558d2262649c365e5e9d082ec38c543601e1c1f10fc1fdc72a830a64ae8419"),
        // .binaryTarget(name: "gRPC-Core", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseFirestore/gRPC-Core.xcframework.zip", checksum: "de8cec3fadee67e832a77fe9fbc1a0a4f6971efdea72f90651250c399fdeeb69"),
        // .binaryTarget(name: "leveldb-library", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseFirestore/leveldb-library.xcframework.zip", checksum: "491f53bfbfa96347c0e5c6f5e61fee3e4a774e66e5ecadd6bbc3602f92614d89"),
        // .binaryTarget(name: "nanopb", url: "https://raw.githubusercontent.com/move37-com/MetaDependencies/main/XCFrameworks/Firebase-8.6.0/FirebaseAnalytics/nanopb.xcframework.zip", checksum: "2f77fb89c973564216706fb238992f6496e2ed37df04237e5c3ece1f44fce3b7"),    
        ]
)
