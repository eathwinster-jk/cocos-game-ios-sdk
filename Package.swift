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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.2.1/CocosGameSDK-0.2.1.xcframework.zip",
            checksum: "a39f76bac3e1f8624f7377a94c1d58b0d9e3f72a90f8a354332065af69fa194d"
        ),
    ]
)
