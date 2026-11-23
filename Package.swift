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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.7.2/CocosGameSDK-0.7.2.xcframework.zip",
            checksum: "12a1d1c14da6a2249fac02ae3c87d7f606de839bba531c52f28c8036f010ff96"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.7.2/CocosGameHotUpdate-0.7.2.xcframework.zip",
            checksum: "21cf146e33261b3b4c911e92564a9fa5d38f56df0c7d4c42378652857df6378f"
        ),
    ]
)
