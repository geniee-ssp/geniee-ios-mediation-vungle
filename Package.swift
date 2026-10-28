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
            url: "https://github.com/geniee-ssp/swift-package-manager-geniee-ios-sdk.git",
            from: "8.5.1"
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
            url: "https://github.com/geniee-ssp/geniee-ios-mediation-vungle/releases/download/7.7.301/GenieeMediationVungle.7.7.3.1.zip",
            checksum: "d46182ddbc014266a617ebf99acd6f04a18dc100f571d9841b6d9ccf193ec8c4"
        )
    ]
)
