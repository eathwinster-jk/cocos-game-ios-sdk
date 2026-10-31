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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.3.2/CocosGameSDK-0.3.2.xcframework.zip",
            checksum: "74e0eab4458fdade0f6c9ba6f0b3259e19d46952eacccd7226a513a1d2c23673"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.3.2/CocosGameHotUpdate-0.3.2.xcframework.zip",
            checksum: "791ae99a3bbaf4be5315d9c029f5d830fa3f837a0f86d10ca7e6c2afc01d6c56"
        ),
    ]
)
