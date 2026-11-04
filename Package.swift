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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.1/CocosGameSDK-0.6.1.xcframework.zip",
            checksum: "37cf1aac2b999e4bcee6f4e809bfc963fb8784d186f5e34c898c0a7b669b8dd6"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.1/CocosGameHotUpdate-0.6.1.xcframework.zip",
            checksum: "faf0fd4d1cc82f5c237ca63b82effb37b9efc6da93c690d44abd67eb20d506e8"
        ),
    ]
)
