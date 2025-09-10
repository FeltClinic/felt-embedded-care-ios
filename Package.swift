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
        .binaryTarget(name: "FeltEmbeddedCare", path: "Binaries/FeltEmbeddedCare.xcframework"),
        .binaryTarget(name: "Capacitor", path: "Binaries/Capacitor.xcframework"),
        .binaryTarget(name: "Cordova", path: "Binaries/Cordova.xcframework"),
        .target(name: "FeltDependencies", dependencies: [
            "Capacitor",
            "Cordova"
        ])
    ]
)
