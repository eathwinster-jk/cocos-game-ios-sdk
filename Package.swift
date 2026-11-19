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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.27/CocosGameSDK-0.6.27.xcframework.zip",
            checksum: "808a9e62930e709ea1d8c764ab62af0a561e49c55e93a2bb579dbc4020dd4307"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.27/CocosGameHotUpdate-0.6.27.xcframework.zip",
            checksum: "469f230aec2076b7b03b3c23916950701a41de0126893288a309afc0d1e5d247"
        ),
    ]
)
