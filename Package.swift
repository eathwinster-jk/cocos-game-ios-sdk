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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.25/CocosGameSDK-0.6.25.xcframework.zip",
            checksum: "5af7412ef940a7fdd52b70a7959b71910f4fc93b9d19cb9769daef4c9c3d32b0"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.25/CocosGameHotUpdate-0.6.25.xcframework.zip",
            checksum: "88d076e077c91798ab7c17b560b779645410468bb88f46360b21cffc8492e438"
        ),
    ]
)
