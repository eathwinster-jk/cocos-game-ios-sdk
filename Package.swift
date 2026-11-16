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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.19/CocosGameSDK-0.6.19.xcframework.zip",
            checksum: "0d377e984a520b719071d174baad61a76667cff791ee1c721c16b53e422bfe50"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.19/CocosGameHotUpdate-0.6.19.xcframework.zip",
            checksum: "a9dc0e8d7b40509c948beb1d91e6b406fa05ac4807314ed1ec578cd75ecff5de"
        ),
    ]
)
