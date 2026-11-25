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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.8.1/CocosGameSDK-0.8.1.xcframework.zip",
            checksum: "72a00a7c184b11eefaf3eae699cd441fad1bfa90c185fb4d45fc5121cf0b96dd"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.8.1/CocosGameHotUpdate-0.8.1.xcframework.zip",
            checksum: "9f6e8fc325545f0feb7516a279d41fd20845b8434d717a2fc44b5bdc606c8b29"
        ),
    ]
)
