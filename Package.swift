// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "URLDataTransfer",
    products: [
        .library(
            name: "URLDataTransfer",
            targets: ["URLDataTransfer"])
    ],
    dependencies: [
        .package(url: "https://github.com/zachbazov/CodeBureau.git", from: "1.0.4")
    ],
    targets: [
        .target(name: "URLDataTransfer", dependencies: [
            "CodeBureau"
        ]),
    ]
)
