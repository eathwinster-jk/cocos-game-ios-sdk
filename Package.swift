// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "CocosGameSDK",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "CocosGameSDK", targets: ["CocosGameSDK"]),
        .library(name: "CocosGameHotUpdate", targets: ["CocosGameHotUpdate", "CocosGameSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "CocosGameSDK",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.12/CocosGameSDK-0.6.12.xcframework.zip",
            checksum: "c45bde79d26a4c437cdbdbd7bf3bd55b893347e502027e2f029d76e6ec1a3788"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.12/CocosGameHotUpdate-0.6.12.xcframework.zip",
            checksum: "ba86a022e6deaae28a96bd4812c6effab1f109ffb1c5925423f191cf33e4da8b"
        ),
    ]
)
