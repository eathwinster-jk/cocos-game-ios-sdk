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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.0/CocosGameSDK-0.6.0.xcframework.zip",
            checksum: "b43976d94f225db2e76aea4f7783e50adea4debf764ac3e66d4e598f863f73e2"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.0/CocosGameHotUpdate-0.6.0.xcframework.zip",
            checksum: "d6b66ded0d662b605bda7cd5eae9a956ea12e07c4815e01ff4aeacb503b680fd"
        ),
    ]
)
