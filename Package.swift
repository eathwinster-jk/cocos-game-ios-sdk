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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.5/CocosGameSDK-0.6.5.xcframework.zip",
            checksum: "9901c303816ee371c9906e52f2f094cf7622b6acab13bfc7b17f8d98bf3eed7e"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.5/CocosGameHotUpdate-0.6.5.xcframework.zip",
            checksum: "7d9c75a4774c8151b95158282f619fec689d25f33226fd5dd884adcf7e88385f"
        ),
    ]
)
