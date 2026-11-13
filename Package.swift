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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.17/CocosGameSDK-0.6.17.xcframework.zip",
            checksum: "880d1a57d6414198b2ceed07ac69d77f49749bd77bd2788064fd95f11417ffa4"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.17/CocosGameHotUpdate-0.6.17.xcframework.zip",
            checksum: "620b86c30730351e8feef3c3b8fb2b229ed04cd3fde433d54050c8dc3228bf32"
        ),
    ]
)
