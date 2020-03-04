// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Vercantez",
    products: [
        .executable(name: "Vercantez", targets: ["Vercantez"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.3.0"),
    ],
    targets: [
        .target(
            name: "Vercantez",
            dependencies: [
            "Publish"
            ]
        )
    ]
)