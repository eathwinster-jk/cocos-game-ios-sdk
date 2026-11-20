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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.30/CocosGameSDK-0.6.30.xcframework.zip",
            checksum: "110b885cc0dc021be5fd6b9180fe4bc5f68be1e619ae32a593af135b80d41379"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.30/CocosGameHotUpdate-0.6.30.xcframework.zip",
            checksum: "92f27c9fb5991119f6c7eedb9c920bdf608ce87553354573610a9277701739e1"
        ),
    ]
)
