// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "AdaptyUI",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "AdaptyUI",
            targets: ["AdaptyUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adaptyteam/AdaptySDK-iOS.git", exact: "2.9.6")
    ],
    targets: [
        .target(
            name: "AdaptyUI",
            dependencies: [
                .product(name: "Adapty", package: "AdaptySDK-iOS")
            ],
            path: "Sources"),
        .testTarget(
            name: "AdaptyUITests",
            dependencies: ["AdaptyUI"]),
    ]
)
