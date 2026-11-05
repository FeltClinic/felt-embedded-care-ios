// swift-tools-version: 5.5

import PackageDescription

let releaseBase = "https://github.com/FeltClinic/felt-embedded-care-ios/releases/download/v1.20.0"

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
            checksum: "5c0313ac05df882d41c6e3a8d4cfa92a805bf7e4af7b416c81b1d61acdb39558"
        ),
        .binaryTarget(
            name: "Capacitor",
            url: "\(releaseBase)/Capacitor.xcframework.zip",
            checksum: "93c62be517141e02941dbbe64b8acb92f74dbafbfc56dbd1214c285a3e1dba7b"
        ),
        .binaryTarget(
            name: "Cordova",
            url: "\(releaseBase)/Cordova.xcframework.zip",
            checksum: "97050b63d0005aef46106d4c4d01d737c45c02d0fd50352afe9c8254cbc5e83f"
        ),
        .target(
            name: "FeltDependencies",
            dependencies: ["Capacitor", "Cordova"]
        ),
    ]
)
