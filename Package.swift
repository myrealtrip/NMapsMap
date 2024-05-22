// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "NMapsMap",
    products: [
        .library(
            name: "NMapsMap",
            targets: [
                "NMapsMap",
                "NMapsGeometryBinary"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/myrealtrip/NMapsGeometry", .exactItem("1.0.2"))
    ],
    targets: [
        .binaryTarget(
            name: "NMapsMap",
            path: "framework/NMapsMap.xcframework"
        ),
        .target(
            name: "NMapsGeometryBinary",
            dependencies: [
                "NMapsGeometry"
            ]
        )
    ]
)
