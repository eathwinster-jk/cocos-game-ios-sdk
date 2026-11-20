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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.29/CocosGameSDK-0.6.29.xcframework.zip",
            checksum: "73f5440954fd6ed202e6510aa12be013c265ccac032adf5db57356e457ff80d2"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.29/CocosGameHotUpdate-0.6.29.xcframework.zip",
            checksum: "65eba94aa1556ad62b5f4ee1006be82b88e140bf218fe33ccfd713b7cfeb5889"
        ),
    ]
)
