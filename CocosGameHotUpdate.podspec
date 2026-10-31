Pod::Spec.new do |spec|
  spec.name = 'CocosGameHotUpdate'
  spec.version = '0.5.0'
  spec.summary = 'Cocos Game iOS SDK hot update module'
  spec.homepage = 'https://github.com/eathwinster-jk/cocos-game-ios-sdk'
  spec.license = { :type => 'Proprietary', :text => 'Copyright eath. All rights reserved.' }
  spec.author = { 'eath' => 'eath@localhost' }
  spec.platform = :ios, '16.0'
  spec.source = { :http => 'https://github.com/eathwinster-jk/cocos-game-ios-sdk/releases/download/0.5.0/CocosGameHotUpdate-0.5.0.xcframework.zip' }
  spec.vendored_frameworks = 'CocosGameHotUpdate.xcframework'
  spec.dependency 'CocosGameSDK', '0.5.0'
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
