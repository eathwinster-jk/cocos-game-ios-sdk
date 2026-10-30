// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "CocosGameSDK",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "CocosGameSDK", targets: ["CocosGameSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "CocosGameSDK",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.2.4/CocosGameSDK-0.2.4.xcframework.zip",
            checksum: "60e8e16c0cd54d6acf1ea422b9c9cd9b803ff57ddcda85858bccb0316942a8ad"
        ),
    ]
)
