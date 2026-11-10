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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.8/CocosGameSDK-0.6.8.xcframework.zip",
            checksum: "dddc4020c1ac6e5dd99fd1fd44935b1a9826f1254474cec3f5301f715baf1558"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.8/CocosGameHotUpdate-0.6.8.xcframework.zip",
            checksum: "a214a1c884246716fafa488b8f39d06ed966a5baf954d9b9ca506fe835ea7ad0"
        ),
    ]
)
