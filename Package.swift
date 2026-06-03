// swift-tools-version: 5.5

import PackageDescription

let releaseBase = "https://github.com/FeltClinic/felt-embedded-care-ios/releases/download/v1.19.2"

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
            checksum: "fe46f96af985613926451c83c7fbc988b605f465d28c481d49e6182c828f5e49"
        ),
        .binaryTarget(
            name: "Capacitor",
            url: "\(releaseBase)/Capacitor.xcframework.zip",
            checksum: "76ff13db4a252ee261976449317d9a9e0e73c03cb36b4ff8c05520922cb9a733"
        ),
        .binaryTarget(
            name: "Cordova",
            url: "\(releaseBase)/Cordova.xcframework.zip",
            checksum: "e46e6290ea039c69301c132efae163d709e0e45e712c57059a9d63a6060099e4"
        ),
        .target(
            name: "FeltDependencies",
            dependencies: ["Capacitor", "Cordova"]
        ),
    ]
)
