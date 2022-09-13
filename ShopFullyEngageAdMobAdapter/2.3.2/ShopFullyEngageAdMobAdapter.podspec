Pod::Spec.new do |spec|
    spec.name             = 'ShopFullyEngageAdMobAdapter'
    spec.version          = '2.3.2'
    spec.summary          = 'ShopFully Engage SDK mediation adapter for Google Mobile Ads'
    spec.description      = <<-DESC
    ShopFully Engage SDK mediation adapter for Google Mobile Ads
    DESC
    
    spec.swift_version = '5.0'
    spec.module_name   = 'ShopFullyEngageAdMobAdapter'
    spec.homepage         = 'https://corporate.shopfully.com/'
    spec.license          = { :type => 'Copyright', :file => 'LICENSE' }
    spec.author           = { 'ShopFully Mobile Team' => 'mobile-dev@shopfully.com' }
    spec.ios.deployment_target = '12.0'
    
    spec.source           = { :http => 'https://repository-engage.shopfully.tech/ShopFullyEngageSDK/2.3.2/ShopFullyEngageAdMobAdapter-2.3.2.zip' }

    spec.public_header_files = "ShopFullyEngageAdMobAdapter.framework/Headers/*.h"

    spec.dependency 'Google-Mobile-Ads-SDK', '~> 8'
    spec.dependency 'ShopFullyEngageSDK', '2.3.2'

end
