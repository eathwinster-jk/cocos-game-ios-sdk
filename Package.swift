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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.14/CocosGameSDK-0.6.14.xcframework.zip",
            checksum: "353da77530d400dd845b5a4e9e8443a7fa4f81f19591b2093ced9d7bcb641c60"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.14/CocosGameHotUpdate-0.6.14.xcframework.zip",
            checksum: "f5db05c13bbd738c8d468c0d86b8517cbf3f967c26f977c1afc534055e781156"
        ),
    ]
)
