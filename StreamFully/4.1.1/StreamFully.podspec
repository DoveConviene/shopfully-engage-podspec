Pod::Spec.new do |spec|
    spec.name             = 'StreamFully'
    spec.version          = '4.1.1'
    spec.summary          = 'ShopFully Group Analytics iOS SDK'
    spec.description      = <<-DESC
    This SDK is used for track events inside ShopFully Group
    DESC
    
    spec.swift_version = '5.0'
    spec.module_name   = 'StreamFully'
    spec.homepage         = 'https://corporate.shopfully.com/'
    spec.license          = { :type => 'Copyright', :file => 'LICENSE' }
    spec.author           = { 'ShopFully Group Mobile Team' => 'mobile-dev@shopfullygroup.com' }
    spec.ios.deployment_target = '10.0'

    spec.default_subspec = 'Core'

    spec.source           = { :http => 'https://repository-engage.shopfully.tech/StreamFully/4.1.1/StreamFully-4.1.1.zip' }

    spec.public_header_files = "StreamFully.framework/Headers/*.h"

    spec.ios.vendored_frameworks = 'StreamFully.framework'

    spec.frameworks = 'UIKit', 'CoreTelephony', 'CoreLocation', 'CoreMedia', 'ADSupport'

    spec.subspec 'Core' do |sp|
        sp.source_files = 'SFAnalytics/Core/**/*'
    end
  
    spec.subspec 'BaseInterfaces' do |sp|
        sp.dependency 'StreamFully/Core'
        sp.source_files = 'SFAnalytics/BaseInterfaces/**/*'
    end
end
