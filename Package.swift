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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.15/CocosGameSDK-0.6.15.xcframework.zip",
            checksum: "4fd302d3d9b29e253ce4272b3cce7b1bbde9279b981c37386964d12bed06239d"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.15/CocosGameHotUpdate-0.6.15.xcframework.zip",
            checksum: "0e206859a20abf20cdbb67359b5e3b3cf274ba2297c5bb02ed2922bf52d93a15"
        ),
    ]
)
