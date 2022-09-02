Pod::Spec.new do |spec|
    spec.name             = 'ShopFullyEngageSDK'
    spec.version          = '2.3.1'
    spec.summary          = 'ShopFully Engage iOS SDK'
    spec.description      = <<-DESC
    ShopFully Engage SDK for iOS platform.
    DESC
    
    spec.swift_version = '5.0'
    spec.module_name   = 'ShopFullyEngageSDK'
    spec.homepage         = 'https://corporate.shopfully.com/'
    spec.license          = { :type => 'Copyright', :file => 'LICENSE' }
    spec.author           = { 'ShopFully Group Mobile Team' => 'mobile-dev@shopfullygroup.com' }
    spec.ios.deployment_target = '12.0'
    
    spec.source           = { :http => 'https://repository-engage.shopfully.tech/ShopFullyEngageSDK/beta/2.3.1/ShopFullyEngageSDK-2.3.1.zip' }

    spec.resources = 'ShopFullyEngageSDK/Classes/**/*.{xcdatamodeld}'

    spec.public_header_files = "ShopFullyEngageSDK.framework/Headers/*.h"

    spec.ios.vendored_frameworks = 'ShopFullyEngageSDK.framework', 'Frameworks/PlotProjects.framework', 'Frameworks/StreamFully.framework', 'Frameworks/Localytics.xcframework', 'Frameworks/RadarSDK.xcframework'

    spec.frameworks = 'UIKit', 'CoreGraphics', 'QuartzCore', 'SystemConfiguration', 'MediaPlayer', 'AdSupport',
    'CoreTelephony', 'CoreLocation', 'CoreMedia', 'AVFoundation', 'SafariServices', 'WebKit', 'CoreData'

    spec.weak_framework = 'AppTrackingTransparency'

end
