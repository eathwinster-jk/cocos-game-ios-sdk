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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.23/CocosGameSDK-0.6.23.xcframework.zip",
            checksum: "d02790d8fd3f68f586f2ddc81fdbe4eef43d7a6deeccfb9586c1980dc7f88839"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.23/CocosGameHotUpdate-0.6.23.xcframework.zip",
            checksum: "c9e51286181f5463167015ab1b2874be1f23d5fad251b498a337e13222f5043f"
        ),
    ]
)
