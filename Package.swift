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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.1.9/CocosGameSDK-0.1.9.xcframework.zip",
            checksum: "90b9673d8b6786977297627020ae1880dac33c454a410bce4d76605c27611aad"
        ),
    ]
)
