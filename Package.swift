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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.20/CocosGameSDK-0.6.20.xcframework.zip",
            checksum: "709a3d15199549a89590ffe023cc6d763b54fa2a3f788799405fbcd36d0221d9"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.20/CocosGameHotUpdate-0.6.20.xcframework.zip",
            checksum: "027323c8c5e5aa7aea8ed2fa38b56aa5cd53c525d0d2569b08b2ef710056b06e"
        ),
    ]
)
