
Pod::Spec.new do |s|
  s.name             = 'IMReactiveTextField'
  s.version          = '0.9.0'
  s.summary          = 'By far the most fantastic view I have seen in my entire life. No joke.'
 
  s.description      = <<-DESC
This fantastic view changes its color gradually makes your app look fantastic!
                       DESC
 
  s.homepage         = 'https://github.com/iMoya917/IMReactiveTextField'
  s.license          = 'MIT'
  s.author           = { 'Ivan' => 'idion917@gmail.com' }
  s.source           = { :git => 'https://github.com/iMoya917/IMReactiveTextField.git', :tag => '0.9.0' }
 
  s.ios.deployment_target = '9.0'
  s.framework = 'UIKit'
  s.dependency 'ReactiveCocoa', '5.0'

  #s.source_files = 'IMReactiveTextField/Classes/**/*'
 # 8
  #s.source_files = "IMReactiveTextField/**/*.{swift}"

s.source_files = 'IMReactiveTextField/Classes/**/*'
s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2', 'SWIFT_INCLUDE_PATHS' => '$(PODS_ROOT)/CommonCryptoSwift/Sources/CCommonCrypto' }
s.preserve_paths = 'Sources/CCommonCrypto/module.modulemap'


end