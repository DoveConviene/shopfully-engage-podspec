Pod::Spec.new do |spec|
    spec.name             = 'ShopperBranding'
    spec.version          = '0.3.0'
    spec.summary          = 'ShopperBranding iOS'
    spec.description      = <<-DESC
    A component that allows you to implement ShopperBranding, minimizing code duplication and integration effort
    DESC
    
    spec.swift_version = '5.0'
    spec.module_name   = 'ShopperBranding'
    spec.homepage         = 'https://corporate.shopfully.com/'
    spec.license          = { :type => 'Copyright', :file => 'LICENSE' }
    spec.author           = { 'ShopFully Group Mobile Team' => 'mobile-dev@shopfullygroup.com' }
    spec.ios.deployment_target = '10.0'
    
    spec.requires_arc = true
    spec.static_framework = true

    spec.source           = { :http => 'https://repository-engage.shopfully.tech/ShopperBranding/0.3.0/ShopperBranding-0.3.0.zip' }

    spec.public_header_files = "ShopperBranding.framework/Headers/*.h"

    spec.ios.vendored_frameworks = 'ShopperBranding.framework'

    spec.dependency 'TeadsSDK', '~> 4.8.8'
    spec.dependency 'Google-Mobile-Ads-SDK', '~> 8'

    spec.frameworks = 'UIKit', 'CoreGraphics', 'QuartzCore', 'SystemConfiguration', 'MediaPlayer', 'AdSupport',
    'CoreTelephony', 'CoreLocation', 'CoreMedia', 'AVFoundation', 'SafariServices', 'WebKit'

end
