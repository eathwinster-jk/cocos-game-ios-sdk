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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.22/CocosGameSDK-0.6.22.xcframework.zip",
            checksum: "01e54beb9f18a6911b711e46c069e7cc6c903de4c06bd63d0ab4807caf262a16"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.22/CocosGameHotUpdate-0.6.22.xcframework.zip",
            checksum: "3f812a9f793eafe4547b9237478d39987d23d658ebec9e17def62ee6ed6d0c8b"
        ),
    ]
)
