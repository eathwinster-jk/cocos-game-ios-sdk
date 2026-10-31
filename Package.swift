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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.3.0/CocosGameSDK-0.3.0.xcframework.zip",
            checksum: "f4f8befa78e65ab7bcb9985c36abc7e0fe307615fb93220b09f6c2dc2a0b05a9"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.3.0/CocosGameHotUpdate-0.3.0.xcframework.zip",
            checksum: "073e5e94598ce44bd6cf5f0944222d1aa53f92af15136daf82ebb3bcf1c9793c"
        ),
    ]
)
