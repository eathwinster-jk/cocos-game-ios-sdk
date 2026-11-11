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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.11/CocosGameSDK-0.6.11.xcframework.zip",
            checksum: "c6df65bb2681678a7f94625ce4b5afb3f39b6829f6cffa245fe2ed6e87f1bd50"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.11/CocosGameHotUpdate-0.6.11.xcframework.zip",
            checksum: "3315e387786f90b316680e57cbb7bc5d4c5178f4479a5eb84b0d9a65a32d7326"
        ),
    ]
)
