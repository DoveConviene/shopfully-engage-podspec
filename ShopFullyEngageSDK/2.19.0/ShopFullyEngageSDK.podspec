Pod::Spec.new do |spec|
    spec.name             = 'ShopFullyEngageSDK'
    spec.version          = '2.19.0'
    spec.summary          = 'ShopFully Engage iOS SDK'
    spec.description      = <<-DESC
    ShopFully Engage iOS SDK
    DESC

    spec.swift_version = '5.9'
    spec.module_name   = 'ShopFullyEngageSDK'
    spec.homepage         = 'https://corporate.shopfully.com/'
    spec.license          = { :type => 'Copyright', :file => 'LICENSE' }
    spec.author           = { 'ShopFully International Group Mobile Team' => 'mobile-dev@shopfully.com' }
    spec.ios.deployment_target = '12.0'

    spec.source           = { :http => 'https://repository-engage.shopfully.tech/ShopFullyEngageSDK/' + spec.version.to_s + '/ShopFullyEngageSDK-' + spec.version.to_s + '.zip' }
    spec.public_header_files = 'ShopFullyEngageSDK.framework/Headers/*.h'

    spec.source_files = 'ShopFullyEngageSDK/Classes/**/*.{h,m,swift}'
    spec.resources = 'ShopFullyEngageSDK/Classes/**/*.{xcdatamodeld}'
    spec.resource_bundles = {'ShopFullyEngageSDK_privacy' => ['ShopFullyEngageSDK/Resources/PrivacyInfo.xcprivacy']}

    spec.frameworks = 'UIKit', 'CoreGraphics', 'QuartzCore', 'SystemConfiguration', 'MediaPlayer', 'AdSupport', 'CoreTelephony', 'CoreLocation', 'CoreMedia', 'AVFoundation', 'SafariServices', 'WebKit', 'CoreData'
    spec.weak_framework = 'AppTrackingTransparency'

    spec.dependency 'StreamFully', '4.5.2'
    spec.dependency 'StreamFully/BaseInterfaces', '4.5.2'

    # Vendored frameworks
    # Localytics 6.3.0
    # RadarSDK 3.9.14
    spec.ios.vendored_frameworks = 'ShopFullyEngageSDK.xcframework', 'Frameworks/Localytics.xcframework', 'Frameworks/RadarSDK.xcframework'
end
