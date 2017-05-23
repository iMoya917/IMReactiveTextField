
Pod::Spec.new do |s|
  s.name             = 'IMReactiveTextField'
  s.version          = '0.7.0'
  s.requires_arc = true
  s.summary          = 'By far the most fantastic view I have seen in my entire life. No joke.'
 
  s.description      = <<-DESC
This fantastic view changes its color gradually makes your app look fantastic!
                       DESC
 
  s.homepage         = 'https://github.com/iMoya917/IMReactiveTextField'
  s.license          = 'MIT'
  s.author           = { 'Ivan' => 'idion917@gmail.com' }
  s.source           = { :git => 'https://github.com/iMoya917/IMReactiveTextField.git', :tag => '0.7.0' }
 
  s.ios.deployment_target = '9.0'
  s.framework = "UIKit"
  s.source_files = 'IMReactiveTextField/Classes/**/*'

  s.dependency 'ReactiveCocoa', '5.0'

end