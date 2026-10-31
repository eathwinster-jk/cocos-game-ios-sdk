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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.5.0/CocosGameSDK-0.5.0.xcframework.zip",
            checksum: "70be5977be4c64937989e6a21976672732a451a74838a6f26c956b65478d2c97"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.5.0/CocosGameHotUpdate-0.5.0.xcframework.zip",
            checksum: "33c3fcd97b30353b9a1a62004d7a94442c4727fbe75777798f217d970c83a170"
        ),
    ]
)
