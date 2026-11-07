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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.2/CocosGameSDK-0.6.2.xcframework.zip",
            checksum: "c3f0dd81e7ebc2cc8dd867a411ead61a8d87aa586c91afff478cd8fe68905def"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.2/CocosGameHotUpdate-0.6.2.xcframework.zip",
            checksum: "03858414d4807f4eb8f094d42c8cb0f780c16bc66bed15f79653129c9ba33102"
        ),
    ]
)
