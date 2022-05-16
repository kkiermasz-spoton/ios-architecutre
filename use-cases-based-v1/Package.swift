// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "services-based",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "services-based",
            targets: ["MenuDomain", "MenuFeature", "MenuInfrastructure"]),
    ],
    targets: [
        .target(name: "MenuDomain"),
        .target(name: "MenuFeature", dependencies: ["MenuDomain"]),
        .target(name: "MenuInfrastructure", dependencies: ["MenuDomain"])
    ]
)
