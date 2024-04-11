Pod::Spec.new do |spec|
  spec.name             = 'ShopFullyEngageAdMobAdapter'
  spec.version          = '2.18.0'
  spec.summary          = 'ShopFully Engage SDK mediation adapter for Google Mobile Ads'
  spec.description      = <<-DESC
  ShopFully Engage SDK mediation adapter for Google Mobile Ads
  DESC

  spec.swift_version = '5.9'
  spec.module_name   = 'ShopFullyEngageAdMobAdapter'
  spec.homepage         = 'https://corporate.shopfully.com/'
  spec.license          = { :type => 'Copyright', :file => 'LICENSE' }
  spec.author           = { 'ShopFully Mobile Team' => 'mobile-dev@shopfully.com' }
  spec.source           = { :http => 'https://repository-engage.shopfully.tech/ShopFullyEngageSDK/' + spec.version.to_s + '/ShopFullyEngageAdMobAdapter-' + spec.version.to_s + '.zip' }
  spec.public_header_files = 'ShopFullyEngageAdMobAdapter.framework/Headers/*.h'
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'ShopFullyEngageAdMobAdapter.xcframework'

  spec.dependency 'Google-Mobile-Ads-SDK', '~> 11'
  spec.dependency 'ShopFullyEngageSDK', spec.version.to_s


end
