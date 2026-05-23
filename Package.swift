// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GenieeMediationVungle",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GenieeMediationVungle",
            targets: ["GenieeMediationVungleTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/unigeniee/swift-package-manager-geniee-ios-sdk.git",
            from: "8.4.3"
        ),
        .package(
            url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git",
            from: "7.0.0"
        )
    ],
    targets: [
        .target(
            name: "GenieeMediationVungleTarget",
            dependencies: [
                "GenieeMediationVungle",
                .product(name: "GNAdSDK", package: "swift-package-manager-geniee-ios-sdk"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager")
            ],
            path: "Sources/GenieeMediationVungleTarget"
        ),
        .binaryTarget(
            name: "GenieeMediationVungle",
            url: "https://github.com/unigeniee/geniee-ios-mediation-vungle/releases/download/7.7.300/GenieeMediationVungle.7.7.3.0.zip",
            checksum: "6f97212861c13178ca9ceab9f279dcdf2aca089e5b6bdd66491baa403ae0dcf2"
        )
    ]
)
