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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.7.3/CocosGameSDK-0.7.3.xcframework.zip",
            checksum: "c466d115cb6ba428bfdc847a196abb04baf19ab6e112f93c97f24899053b4a61"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.7.3/CocosGameHotUpdate-0.7.3.xcframework.zip",
            checksum: "6c597da7c320391cc079c3cd8bc7e831b9bee2a589dc5527afd22eeb188540b3"
        ),
    ]
)
