
Pod::Spec.new do |spec|
    spec.name             = 'StreamFully'
    spec.version          = '4.5.1'
    spec.summary          = 'ShopFully Group Analytics iOS SDK'
    spec.module_name   = 'StreamFully'

    spec.description      = <<-DESC
        This SDK is used for track events inside ShopFully Group
                       DESC

    spec.homepage         = 'https://github.com/DoveConviene/SFAnalytics-iOS'
    spec.license          = { :type => 'Copyright', :file => 'LICENSE' }
    spec.author           = { 'ShopFully Group Mobile Team' => 'mobile-dev@shopfullygroup.com' }
    spec.source           = { :http => 'https://repository-engage.shopfully.tech/StreamFully/' + spec.version.to_s + '/StreamFully-' + spec.version.to_s + '.zip' }
    spec.ios.vendored_frameworks = 'StreamFully.xcframework'
    spec.public_header_files = 'StreamFully.framework/Headers/*.h'

    spec.ios.deployment_target = '12.0'
    spec.swift_version = '5.0'

    spec.default_subspec = 'Core'

    spec.frameworks = 'Foundation','UIKit','CoreLocation', 'CoreTelephony', 'AdSupport'

    spec.subspec 'Core' do |sp|
      sp.source_files = 'SFAnalytics/Core/**/*'
    end

    spec.subspec 'BaseInterfaces' do |sp|
      sp.dependency 'StreamFully/Core'
      sp.source_files = 'SFAnalytics/BaseInterfaces/**/*'
    end

end
