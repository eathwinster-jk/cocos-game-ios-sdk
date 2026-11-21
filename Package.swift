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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.31/CocosGameSDK-0.6.31.xcframework.zip",
            checksum: "e1be5e511aeb57d32ff43c964c5a1ccef111c651db517e3fecfebf71a413b9e2"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.31/CocosGameHotUpdate-0.6.31.xcframework.zip",
            checksum: "93c862f6299b4bd71d7c18d1e056a750a2283802988e45a94550e6f72bce9173"
        ),
    ]
)
