Pod::Spec.new do |spec|
    spec.name             = 'ShopperBranding'
    spec.version          = '0.1.0'
    spec.summary          = 'ShopperBranding iOS'
    spec.description      = <<-DESC
    ShopperBranding for iOS
    DESC
    
    spec.swift_version = '5.0'
    spec.module_name   = 'ShopperBranding'
    spec.homepage         = 'https://corporate.shopfully.com/'
    spec.license          = { :type => 'Copyright', :file => 'LICENSE' }
    spec.author           = { 'ShopFully Group Mobile Team' => 'mobile-dev@shopfullygroup.com' }
    spec.ios.deployment_target = '10.0'
    
    spec.source           = { :http => 'https://repository-engage.shopfully.tech/ShopperBranding/0.1.0/ShopperBranding-0.1.0.zip' }

    spec.public_header_files = "ShopperBranding.framework/Headers/*.h"

    spec.ios.vendored_frameworks = 'ShopperBranding.framework'

    spec.frameworks = 'UIKit', 'CoreGraphics', 'QuartzCore', 'SystemConfiguration', 'MediaPlayer', 'AdSupport',
    'CoreTelephony', 'CoreLocation', 'CoreMedia', 'AVFoundation', 'SafariServices', 'WebKit'

end
