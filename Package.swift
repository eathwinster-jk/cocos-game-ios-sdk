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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.13/CocosGameSDK-0.6.13.xcframework.zip",
            checksum: "195c18f82ead247668f4263f06808918df015a87c77df96ff7e5527651e81ad2"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.13/CocosGameHotUpdate-0.6.13.xcframework.zip",
            checksum: "372e3b4f0ffda04ab2ec114f1c7e0bf40b892deebac0745b9e17db7de6f556f9"
        ),
    ]
)
