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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.26/CocosGameSDK-0.6.26.xcframework.zip",
            checksum: "cce4be660e89ff9ebe60c8e72df9d3d50c47905ec257deaaa6883c07c1fcb277"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.26/CocosGameHotUpdate-0.6.26.xcframework.zip",
            checksum: "30183993cdaa8186824c2239ecaad2344f871b3d0238480ed372619fe2058d0e"
        ),
    ]
)
