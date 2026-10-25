// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "gigya_flutter_plugin",
    platforms: [
        .iOS("13.0"),
    ],
    products: [
        .library(name: "gigya-flutter-plugin", targets: ["gigya_flutter_plugin"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SAP/gigya-swift-sdk.git", "1.8.0"..<"2.0.0"),
    ],
    targets: [
        .target(
            name: "gigya_flutter_plugin",
            dependencies: [
                .product(name: "Gigya", package: "gigya-swift-sdk"),
                .product(name: "GigyaAuth", package: "gigya-swift-sdk"),
            ]
        ),
    ]
)
