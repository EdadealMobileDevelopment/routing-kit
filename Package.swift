// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Routing",
    products: [
        .library(name: "Routing", targets: ["Routing"]),
    ],
    dependencies: [
        // 🌎 Utility package containing tools for byte manipulation, Codable, OS APIs, and debugging.
        .package(url: "https://github.com/vapor/core.git", .branch("nio")),

        // 📦 Dependency injection / inversion of control framework.
        .package(url: "https://github.com/vapor/service.git", .branch("nio")),
    ],
    targets: [
        .target(name: "Routing", dependencies: ["Bits", "Debugging", "Service"]),
        .testTarget(name: "RoutingTests", dependencies: ["Routing"]),
    ]
)
