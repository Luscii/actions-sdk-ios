Pod::Spec.new do |spec|
  spec.name         = 'Actions'
  spec.version      = '0.1.0'
  spec.homepage     = 'https://integrations.luscii.com/docs/actions-sdk'
  spec.authors      = { 'Luscii' => 'integrations@luscii.com' }
  spec.summary      = 'Luscii Actions SDK'
  spec.source       = { :git => 'https://github.com/Luscii/actions-sdk-ios/releases/download/0.1.0/Actions.xcframework.zip', :tag => '0.1.0' }
  spec.vendored_frameworks = 'Actions.xcframework'
end