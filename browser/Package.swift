// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorBrowser",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorBrowser",
            targets: ["BrowserPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "BrowserPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/BrowserPlugin"),
        .testTarget(
            name: "BrowserPluginTests",
            dependencies: ["BrowserPlugin"],
            path: "ios/Tests/BrowserPluginTests")
    ]
)
