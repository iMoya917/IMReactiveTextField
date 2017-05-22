
Pod::Spec.new do |s|
  s.name             = 'IMReactiveTextField'
  s.version          = '0.5.0'
  s.summary          = 'By far the most fantastic view I have seen in my entire life. No joke.'
 
  s.description      = <<-DESC
This fantastic view changes its color gradually makes your app look fantastic!
                       DESC
 
  s.homepage         = 'https://github.com/iMoya917/IMReactiveTextField'
  s.license          = 'MIT'
  s.author           = { 'Ivan' => 'idion917@gmail.com' }
  s.source           = { :git => 'https://github.com/iMoya917/IMReactiveTextField.git', :tag => '0.5.0' }
 
  s.ios.deployment_target = '9.0'
  s.source_files = 'IMReactiveTextField/Classes/**/*'

  s.xcconfig = { 'SWIFT_OBJC_BRIDGING_HEADER' => 'IMReactiveTextFieldSwift-Bridging-Header.h' } 
  s.dependency 'ReactiveCocoa', '5.0'
  s.dependency 'RMRUTValidator'

end