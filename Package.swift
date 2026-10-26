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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.2.0/CocosGameSDK-0.2.0.xcframework.zip",
            checksum: "7ad9018db388aed079335418b1c56c45c951790ea8baf33b799b4e0c70b34c66"
        ),
    ]
)
