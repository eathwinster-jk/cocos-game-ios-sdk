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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.1.11/CocosGameSDK-0.1.11.xcframework.zip",
            checksum: "907005bc77bdfdef9d1d806ca761b12c6c2b3d402ff764c24f32c944c415fbd3"
        ),
    ]
)
