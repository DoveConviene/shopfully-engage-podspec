Pod::Spec.new do |spec|
    spec.name             = 'ShopFullyEngageSDK'
    spec.version          = '2.11.0'
    spec.summary          = 'ShopFully Engage iOS SDK'
    spec.description      = <<-DESC
    ShopFully Engage iOS SDK
    DESC

    spec.swift_version = '5.6'
    spec.module_name   = 'ShopFullyEngageSDK'
    spec.homepage         = 'https://corporate.shopfully.com/'
    spec.license          = { :type => 'Copyright', :file => 'LICENSE' }
    spec.author           = { 'ShopFully International Group Mobile Team' => 'mobile-dev@shopfully.com' }
    spec.ios.deployment_target = '12.0'

    spec.source           = { :http => 'https://repository-engage.shopfully.tech/ShopFullyEngageSDK/' + spec.version.to_s + '/ShopFullyEngageSDK-' + spec.version.to_s + '.zip' }
    spec.public_header_files = 'ShopFullyEngageSDK.framework/Headers/*.h'

    spec.source_files = 'ShopFullyEngageSDK/Classes/**/*.{h,m,swift}'
    spec.resources = 'ShopFullyEngageSDK/Classes/**/*.{xcdatamodeld}'

    spec.frameworks = 'UIKit', 'CoreGraphics', 'QuartzCore', 'SystemConfiguration', 'MediaPlayer', 'AdSupport', 'CoreTelephony', 'CoreLocation', 'CoreMedia', 'AVFoundation', 'SafariServices', 'WebKit', 'CoreData'
    spec.weak_framework = 'AppTrackingTransparency'

    spec.dependency 'StreamFully', '4.2.0'
    spec.dependency 'StreamFully/BaseInterfaces', '4.2.0'

    # Vendored frameworks
    # Localytics 6.2.9
    # PlotPlugin 3.4.6
    # RadarSDK 3.5.4
    spec.ios.vendored_frameworks = 'ShopFullyEngageSDK.framework', 'Frameworks/PlotProjects.framework', 'Frameworks/Localytics.xcframework', 'Frameworks/RadarSDK.xcframework'

    spec.pod_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
