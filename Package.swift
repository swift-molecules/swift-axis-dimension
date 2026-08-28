// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-axis-dimension",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(
            name: "Axis Dimension",
            targets: ["Axis Dimension"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/swift-atoms/swift-dimension.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-atoms/swift-axis.git",
            branch: "main"
        ),
    ],
    targets: [
        .target(
            name: "Axis Dimension",
            dependencies: [
                .product(name: "Dimension", package: "swift-dimension"),
                .product(name: "Axis", package: "swift-axis"),
            ]
        ),
        .testTarget(
            name: "Axis Dimension Tests",
            dependencies: [
                .target(name: "Axis Dimension"),
                .product(name: "Dimension", package: "swift-dimension"),
                .product(name: "Axis", package: "swift-axis"),
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    let ecosystem: [SwiftSetting] = [
        .strictMemorySafety(),
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
        .enableUpcomingFeature("MemberImportVisibility"),
        .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
        .enableExperimentalFeature("Lifetimes"),
        .enableUpcomingFeature("InferIsolatedConformances"),
    ]

    let package: [SwiftSetting] = []

    target.swiftSettings = (target.swiftSettings ?? []) + ecosystem + package
}
