// swift-tools-version: 5.5

import PackageDescription

let releaseBase = "https://github.com/FeltClinic/felt-embedded-care-ios/releases/download/v1.19.0"

let package = Package(
    name: "FeltEmbeddedCare",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "FeltEmbeddedCare",
            targets: ["FeltEmbeddedCare", "FeltDependencies"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "FeltEmbeddedCare",
            url: "\(releaseBase)/FeltEmbeddedCare.xcframework.zip",
            checksum: ""
        ),
        .binaryTarget(
            name: "Capacitor",
            url: "\(releaseBase)/Capacitor.xcframework.zip",
            checksum: ""
        ),
        .binaryTarget(
            name: "Cordova",
            url: "\(releaseBase)/Cordova.xcframework.zip",
            checksum: ""
        ),
        .target(
            name: "FeltDependencies",
            dependencies: ["Capacitor", "Cordova"]
        ),
    ]
)
