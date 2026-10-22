# Cocos Game iOS SDK

牛牛游戏 iOS SDK 二进制发布仓库，提供 `CocosGameSDK.xcframework`（动态 framework，内含游戏资源）。

- 接入文档：https://eathwinster-jk.github.io/cocos-game-ios-docs/
- Demo 源码：https://github.com/eathwinster-jk/cocos-game-ios-demo
- 下载：见 [Releases](https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases)

## 环境要求

- iOS 16.0 及以上
- 真机 arm64；模拟器 x86_64（Apple Silicon Mac 需让模拟器以 Rosetta 运行，或在宿主工程中排除模拟器 arm64）

## Swift Package Manager

Xcode → File → Add Package Dependencies，输入：

```
https://github.com/eathwinster-jk/cocos-game-ios-sdk
```

版本规则选择 Exact Version `0.1.9`。

## CocoaPods

```ruby
platform :ios, '16.0'
use_frameworks!

target 'YourApp' do
  pod 'CocosGameSDK', :podspec => 'https://raw.githubusercontent.com/eathwinster-jk/cocos-game-ios-sdk/0.1.9/CocosGameSDK.podspec'
end
```

## 手动集成

下载 Release 中的 `CocosGameSDK-0.1.9.xcframework.zip`，解压后拖入工程，在 Frameworks, Libraries, and Embedded Content 中选择 Embed & Sign。

## 快速开始

```objc
#import <CocosGameSDK/CocosGameSDK.h>

// AppDelegate：创建窗口后初始化一次
[[CocosGameSDK shared] initializeWithWindow:self.window launchOptions:launchOptions];

// 宿主登录后创建会话并在容器中打开游戏
NSError *error = nil;
CocosGameSessionConfig *session = [[CocosGameSessionConfig alloc] initWithWebsocketURL:websocketURL
                                                                            apiBaseURL:apiBaseURL
                                                                            liveUserId:liveUserId
                                                                              imUserId:imUserId
                                                                             liveToken:liveToken
                                                                             sceneType:sceneType
                                                                               sceneId:sceneId
                                                                               tableId:0
                                                                         clientVersion:appVersion
                                                                            deviceType:@"iOS"
                                                                                 error:&error];
if (!session) return; // 参数校验失败，error 中包含原因
[CocosGameSDK shared].delegate = self;
[[CocosGameSDK shared] openGame:@"niuniu" sessionConfig:session inContainer:self.gameContainer fromViewController:self];
```

完整 API、回调与验收清单见接入文档。
