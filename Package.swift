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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.18/CocosGameSDK-0.6.18.xcframework.zip",
            checksum: "5e7d2f4a6680f896cd45fe6e9851f8ee976cd1ba9db186652cdaf22f157a3ba7"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.18/CocosGameHotUpdate-0.6.18.xcframework.zip",
            checksum: "a2abbb5fe916b9cd1268e9cfc80d884053a5c28892648f4b46b4bf8a89f5a232"
        ),
    ]
)
