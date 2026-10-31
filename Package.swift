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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.2.5/CocosGameSDK-0.2.5.xcframework.zip",
            checksum: "30b8feb6bc6845e37bfd08c49d4470f364dbd72f5aeec0fe2ee7e09981cf1895"
        ),
    ]
)
