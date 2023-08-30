#
#  Be sure to run `pod spec lint libwebp.swift.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "libdav1d.swift"
  spec.version      = "1.0.6"
  spec.summary      = "Prebuilt binaries for libwebp"
  spec.description  = "Simple provider for libwebp for iOS with prebuild binaries"
  spec.homepage     = 'https://github.com/awxkee/libdav1d.swift'
  spec.license      = { :type => "CC0-1.0", :file => "LICENSE" }
  spec.author       = { 'Radzivon Bartoshyk' => 'radzivon.bartoshyk@proton.me' }
  spec.source       = { :git => "https://github.com/awxkee/libdav1d.swift.git", :tag => "#{spec.version}" }
  spec.ios.deployment_target = '13.0'
  spec.osx.deployment_target = '11.0'
  spec.watchos.deployment_target = '6.0'
  spec.tvos.deployment_target = '11.0'
  spec.source_files  = "Sources/libdav1d.xcframework/ios-arm64/Headers/**/*.h"
  spec.public_header_files = "Sources/libdav1d.xcframework/ios-arm64/Headers/**/*.h"
  spec.vendored_frameworks = 'Sources/libdav1d.xcframework'
  spec.preserve_paths = 'Sources/libdav1d.xcframework'
  spec.pod_target_xcconfig = {
      'OTHER_CXXFLAGS' => '$(inherited) -std=c++20',
      'HEADER_SEARCH_PATHS' => '$(inherited) "$(PODS_TARGET_SRCROOT)/Sources/libdav1d.xcframework/ios-arm64/Headers"',
      'EXCLUDED_ARCHS[sdk=watchsimulator*]' => 'i386'
  }
  spec.libraries = 'c++'
  spec.requires_arc = true
end
