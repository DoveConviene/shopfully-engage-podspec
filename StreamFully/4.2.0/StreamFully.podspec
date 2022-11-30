
Pod::Spec.new do |s|
    s.name             = 'StreamFully'
    s.version          = '4.2.0'
    s.summary          = 'ShopFully Group Analytics iOS SDK'
    s.module_name   = 'StreamFully'

    s.description      = <<-DESC
        This SDK is used for track events inside ShopFully Group
                       DESC

    s.homepage         = 'https://github.com/DoveConviene/SFAnalytics-iOS'
    s.license          = { :type => 'Copyright', :file => 'LICENSE' }
    s.author           = { 'ShopFully Group Mobile Team' => 'mobile-dev@shopfullygroup.com' }
    s.source           = { :http => 'https://repository-engage.shopfully.tech/StreamFully/' + s.version.to_s + '/StreamFully-' + s.version.to_s + '.zip' }
    s.ios.vendored_frameworks = 'StreamFully.framework'
    s.public_header_files = 'StreamFully.framework/Headers/*.h'

    s.ios.deployment_target = '10.0'
    s.swift_version = '5.0'

    s.default_subspec = 'Core'

    s.frameworks = 'Foundation','UIKit','CoreLocation', 'CoreTelephony', 'AdSupport'

    s.subspec 'Core' do |sp|
      sp.source_files = 'SFAnalytics/Core/**/*'
    end

    s.subspec 'BaseInterfaces' do |sp|
      sp.dependency 'StreamFully/Core'
      sp.source_files = 'SFAnalytics/BaseInterfaces/**/*'
    end

end
