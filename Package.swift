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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.1.10/CocosGameSDK-0.1.10.xcframework.zip",
            checksum: "9116d064d8a77225cc8c75d019bd4a4132f89aad79da1de42d3465a54465c9ea"
        ),
    ]
)
