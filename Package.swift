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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.7.1/CocosGameSDK-0.7.1.xcframework.zip",
            checksum: "3199a208d8cdce2360d8fb8e74c685640c5e8277cb99ba36cb687e43380294b9"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.7.1/CocosGameHotUpdate-0.7.1.xcframework.zip",
            checksum: "698658e9fa3b87784ab4d8592c4a4811fde06d292d67aaa8f3348cca3cb59345"
        ),
    ]
)
