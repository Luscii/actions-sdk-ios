Pod::Spec.new do |spec|
  spec.name         = 'Actions'
  spec.version      = '0.2.5'
  spec.homepage     = 'https://integrations.luscii.com/docs/actions-sdk'
  spec.license      = 'All rights reserved'
  spec.authors      = { 'Luscii' => 'integrations@luscii.com' }
  spec.summary      = 'Luscii Actions SDK'
  spec.source       = { :http => 'https://github.com/Luscii/actions-sdk-ios/releases/download/0.2.5/Actions.xcframework.zip' }
  spec.vendored_frameworks = 'Actions.xcframework'
end
