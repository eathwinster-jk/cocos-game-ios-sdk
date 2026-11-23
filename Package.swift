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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.7.0/CocosGameSDK-0.7.0.xcframework.zip",
            checksum: "4895b4300808ae50b425c1c10a478b9879a2a5924aedc78abb960ebc36b71f47"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.7.0/CocosGameHotUpdate-0.7.0.xcframework.zip",
            checksum: "075b16b6cbdf2eeca49ec5f4b21253a7bafc2df083a657b5cc5e82af94430263"
        ),
    ]
)
