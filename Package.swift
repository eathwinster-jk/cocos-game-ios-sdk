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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.7.4/CocosGameSDK-0.7.4.xcframework.zip",
            checksum: "5a43313841ac13b4c7ae6962be18c829258d9361a48dc44cd26857d3f1896b26"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.7.4/CocosGameHotUpdate-0.7.4.xcframework.zip",
            checksum: "65dd7fc1374222192fbb7aa50922969fc062839a616db30dd155bb3cd4ac511d"
        ),
    ]
)
