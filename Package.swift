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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.8.0/CocosGameSDK-0.8.0.xcframework.zip",
            checksum: "76782e8d492c7386317c94d3935cfb9ee9ff6d97936639d540fef565d403bdcd"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.8.0/CocosGameHotUpdate-0.8.0.xcframework.zip",
            checksum: "9a3701b233e6d7fa031fdac53fe37a2d3d15bd4a4840ecdff218c07751b41001"
        ),
    ]
)
