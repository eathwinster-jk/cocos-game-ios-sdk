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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.21/CocosGameSDK-0.6.21.xcframework.zip",
            checksum: "b1ad5619d07ac88c0bfe21924f8d759d94b2cde90fa814ca7c4421ca5c9a83a6"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.21/CocosGameHotUpdate-0.6.21.xcframework.zip",
            checksum: "623802d4f967da42cc973d6f7c906d03e68def591afddad460038179efc4bc87"
        ),
    ]
)
