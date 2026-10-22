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
            checksum: "4b991630d120bb3fc8042bb2cc90da6370989996181c8fcb0e3873d6afc82934"
        ),
    ]
)
