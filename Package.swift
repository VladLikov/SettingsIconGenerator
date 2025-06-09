// swift-tools-version: 5.4

import PackageDescription

let package = Package(
    name: "SettingsIconGenerator",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "SettingsIconGenerator",
            targets: ["SettingsIconGenerator"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/sparrowcode/SafeSFSymbols.git", .upToNextMajor(from: "2.0.1")),
    ],
    targets: [
        .target(
            name: "SettingsIconGenerator",
            dependencies: [
                "SafeSFSymbols",
            ]
        )
    ]
)
