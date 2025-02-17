
Pod::Spec.new do |spec|
    spec.name             = 'StreamFully'
    spec.version          = '6.0.0'
    spec.summary          = 'ShopFully Group Analytics iOS SDK'
    spec.module_name   = 'StreamFully'

    spec.ios.deployment_target = '15.4'
    spec.swift_version = '6.0'

    spec.description      = <<-DESC
    This SDK is used for track events inside ShopFully Group
    DESC

    spec.homepage         = 'https://github.com/DoveConviene/SFAnalytics-iOS'
    spec.license          = { :type => 'Copyright', :file => 'LICENSE' }
    spec.author           = { 'ShopFully Mobile Team' => 'mobile-dev@shopfully.com' }
    spec.source           = { :http => 'https://repository-engage.shopfully.tech/StreamFully/' + spec.version.to_s + '/StreamFully-' + spec.version.to_s + '.zip' }
    spec.ios.vendored_frameworks = 'StreamFully.xcframework'
    spec.public_header_files = 'StreamFully.framework/Headers/*.h'

    spec.source_files = 'SFAnalytics/**/**/*.{h,m,swift}'
    spec.resources = 'SFAnalytics/**/**/*.{xcdatamodeld}'
    spec.resource_bundles = {'StreamFully_privacy' => ['SFAnalytics/Resources/PrivacyInfo.xcprivacy']}

    spec.frameworks = 'Foundation','UIKit','CoreLocation','CoreTelephony','AdSupport','CoreData'
end
