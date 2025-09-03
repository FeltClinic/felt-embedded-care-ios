// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "FeltEmbeddedCare",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "FeltEmbeddedCare",
            targets: ["FeltEmbeddedCare", "FeltDependencies"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm", from: "6.2.1"),
    ],
    targets: [
        .binaryTarget(name: "FeltEmbeddedCare", path: "Binaries/FeltEmbeddedCare.xcframework.zip"),
        .target(name: "FeltDependencies", dependencies: [
            .product(name: "Capacitor", package: "capacitor-swift-pm"),
            .product(name: "Cordova", package: "capacitor-swift-pm"),
        ])
    ]
)
