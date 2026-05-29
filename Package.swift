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
            checksum: "4555850b145322b87699b218942f7a22f6bc3a7315b0e1cc1d39b4d669e0540a"
        ),
        .binaryTarget(
            name: "Capacitor",
            url: "\(releaseBase)/Capacitor.xcframework.zip",
            checksum: "c883b0d626f55335ff6ac501371b19f8ffbff3a6e9f95001570403718542ea3c"
        ),
        .binaryTarget(
            name: "Cordova",
            url: "\(releaseBase)/Cordova.xcframework.zip",
            checksum: "1b40cc903b6d954792f79bd91e2062f61bcb76b16ed3d85865ed4e3e71047958"
        ),
        .target(
            name: "FeltDependencies",
            dependencies: ["Capacitor", "Cordova"]
        ),
    ]
)
