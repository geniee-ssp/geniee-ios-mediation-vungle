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
            url: "https://github.com/unigeniee/geniee-ios-mediation-vungle/releases/download/8.3.100/GenieeMediationVungle.8.3.1.0.zip",
            checksum: "07d783a2cd2e5016a81f0f019011bdbaa504b973291ef8ae3c854442e0c21c12"
        )
    ]
)
