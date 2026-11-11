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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.10/CocosGameSDK-0.6.10.xcframework.zip",
            checksum: "9b16690c82ecc16b09b92498c5a180e5ce2cda6578f95f462b4fc9e783cb0d54"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.10/CocosGameHotUpdate-0.6.10.xcframework.zip",
            checksum: "f0a68e801bab15afd6b575bd974fe0b7fc7a1b65b6ec76af4ed693e4875756e1"
        ),
    ]
)
