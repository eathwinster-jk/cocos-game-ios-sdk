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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.2.2/CocosGameSDK-0.2.2.xcframework.zip",
            checksum: "419bb25518dbe8f55584bc59870f0e093db000c5e541ccc18dbcd6720875d367"
        ),
    ]
)
