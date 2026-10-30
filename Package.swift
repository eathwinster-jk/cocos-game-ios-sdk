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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.2.3/CocosGameSDK-0.2.3.xcframework.zip",
            checksum: "c0351110d4d1238548a47e19b2db7e22af19d14ed588c70710e162d3da05f60f"
        ),
    ]
)
