// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "CocosGameSDK",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "CocosGameSDK", targets: ["CocosGameSDK"]),
        .library(name: "CocosGameHotUpdate", targets: ["CocosGameHotUpdate", "CocosGameSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "CocosGameSDK",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.24/CocosGameSDK-0.6.24.xcframework.zip",
            checksum: "685ac88da5ab47ef1ae6a409413c37c926bbd124c6e5c141ea77d9ea3a50638f"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.24/CocosGameHotUpdate-0.6.24.xcframework.zip",
            checksum: "21a894769bdcd469f732015312036e2654a624559997ce39fbf7a29f7b611d0b"
        ),
    ]
)
