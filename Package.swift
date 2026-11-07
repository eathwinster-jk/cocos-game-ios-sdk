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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.4/CocosGameSDK-0.6.4.xcframework.zip",
            checksum: "e007c376639b7f3ba8cc6d9e8131597b7f9208de88a6933ecbbd6fb9b5b64e71"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.4/CocosGameHotUpdate-0.6.4.xcframework.zip",
            checksum: "66685fd0c7926fee0d26bb08a2ec6c38bda282c924365eab56caf27dc95bf498"
        ),
    ]
)
