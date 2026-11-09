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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.6/CocosGameSDK-0.6.6.xcframework.zip",
            checksum: "ea942708a6ef32cef5e39e001e3146da150fb0bee2a01c37b1c6b7435aa1a994"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.6/CocosGameHotUpdate-0.6.6.xcframework.zip",
            checksum: "6f357c2ff4be53d8df094934bc4b4b77475a28f9beec9aae847cac2bd860d99a"
        ),
    ]
)
