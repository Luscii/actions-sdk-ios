Pod::Spec.new do |spec|
  spec.name         = 'Actions'
  spec.version      = '0.1.1'
  spec.homepage     = 'https://integrations.luscii.com/docs/actions-sdk'
  spec.authors      = { 'Luscii' => 'integrations@luscii.com' }
  spec.summary      = 'Luscii Actions SDK'
  spec.source       = { :http => 'https://github.com/Luscii/actions-sdk-ios/releases/download/0.1.1/Actions.xcframework.zip', :tag => '0.1.1' }
  spec.vendored_frameworks = 'Actions.xcframework'
end