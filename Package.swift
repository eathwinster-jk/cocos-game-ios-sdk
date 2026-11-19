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
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.28/CocosGameSDK-0.6.28.xcframework.zip",
            checksum: "5547c73a3833d928ad57cc6e20e306173931292c0b3331aa54251ba72f63b08c"
        ),
        .binaryTarget(
            name: "CocosGameHotUpdate",
            url: "https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.6.28/CocosGameHotUpdate-0.6.28.xcframework.zip",
            checksum: "1ed36c00021429043c989cf9a7b79899182a2f96d738a4d21a05ffd4f23b3dfa"
        ),
    ]
)
