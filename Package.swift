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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.8.2/CocosGameSDK-0.8.2.xcframework.zip",
            checksum: "58cd7992c012ca12275a12696043cb8f4519354199b4014f9279dca032acafb5"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.8.2/CocosGameHotUpdate-0.8.2.xcframework.zip",
            checksum: "459d8474dd17ba2c55b593167155ea144e4b77ed2c71f00237e055fdbf5d3312"
        ),
    ]
)
