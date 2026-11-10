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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.9/CocosGameSDK-0.6.9.xcframework.zip",
            checksum: "247d8c770e0f38f819fbecc1c3c87cf02914fee2bfe772a9e048817f5c943088"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.9/CocosGameHotUpdate-0.6.9.xcframework.zip",
            checksum: "fdc04f1bcb53738ff8d2921e4388b6e3cea79c6332e83c6013a1317d2e3db80a"
        ),
    ]
)
