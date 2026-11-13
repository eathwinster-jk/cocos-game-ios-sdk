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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.16/CocosGameSDK-0.6.16.xcframework.zip",
            checksum: "c034de85e97c2a6aa5ab0ff94059667fe8c5ea20bc672af70dba625b0bd010c1"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.16/CocosGameHotUpdate-0.6.16.xcframework.zip",
            checksum: "c6a2b5b1c5f799e6fc9cdcfdfef171a887bdf00f183c6787146ab0f8b6741b08"
        ),
    ]
)
