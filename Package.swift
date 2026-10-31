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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.3.1/CocosGameSDK-0.3.1.xcframework.zip",
            checksum: "634ede475ed6f72ea5baba82cb46029d2854c43bb8f3b0a35c9aaafd737acefd"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.3.1/CocosGameHotUpdate-0.3.1.xcframework.zip",
            checksum: "5d351c882f040bb1f11d9708b72c0c601a444b025f63d772baece047a8507902"
        ),
    ]
)
