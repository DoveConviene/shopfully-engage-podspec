Pod::Spec.new do |spec|
  spec.name             = 'SFTracker'
  spec.version          = '0.4.5'
  spec.summary          = 'A ShopFully module to send statistics events about flyers'

  spec.description      = <<-DESC
                       An internal library to send events
                       DESC

  spec.homepage         = 'https://github.com/DoveConviene/SFTracker-iOS'
  spec.license          = { :type => 'Copyright', :file => 'LICENSE' }
  spec.author           = { 'ShopFully Mobile Team' => 'mobile-dev@shopfully.com' }
  spec.source           = { :http => 'https://repository-engage.shopfully.tech/SFTracker/' + spec.version.to_s + '/SFTracker-' + spec.version.to_s + '.zip' }
  spec.ios.vendored_frameworks = 'SFTracker.framework'
  spec.public_header_files = 'SFTracker.framework/Headers/*.h'

  spec.swift_version = '5.6'
  spec.ios.deployment_target = '12.0'

  spec.source_files = 'SFTracker/Classes/**/*'

  spec.frameworks = 'Foundation'

  spec.dependency 'StreamFully', '~> 4'
  spec.dependency 'StreamFully/BaseInterfaces', '~> 4'
end
