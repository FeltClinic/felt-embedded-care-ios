// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "FeltEmbeddedCareKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "FeltEmbeddedCareKit",
            targets: ["FeltEmbeddedCareKit", "FeltDependencies"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm", from: "6.1.2"),
        .package(url: "https://github.com/ionic-team/ionic-live-updates-releases", from: "0.5.5"),
    ],
    targets: [
        .binaryTarget(name: "FeltEmbeddedCareKit", path: "Binaries/FeltEmbeddedCareKit.xcframework.zip"),
        .target(name: "FeltDependencies", dependencies: [
            .product(name: "Capacitor", package: "capacitor-swift-pm"),
            .product(name: "Cordova", package: "capacitor-swift-pm"),
            .product(name: "IonicLiveUpdates", package: "ionic-live-updates-releases"),
        ])
    ]
)
