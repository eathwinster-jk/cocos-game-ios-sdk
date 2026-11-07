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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.3/CocosGameSDK-0.6.3.xcframework.zip",
            checksum: "f324dda5ed8209d19ebf9407805fe67028079272d22cda011ddf83923d9a7b3f"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.3/CocosGameHotUpdate-0.6.3.xcframework.zip",
            checksum: "2b645ad69e98aab00d3c69f2951b39f79dbff8edfcf1b4baabff1e59870934e7"
        ),
    ]
)
