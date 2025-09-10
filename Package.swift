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
    ],
    targets: [
        .binaryTarget(name: "FeltEmbeddedCare", path: "Binaries/FeltEmbeddedCare.xcframework.zip"),
        .target(name: "FeltDependencies")
    ]
)
