#
# Be sure to run `pod lib lint MedCheckPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MedCheckPod'
  s.version          = '1.0.7'
  s.summary          = 'This Pod will allow users to connect with MedCheck BLE Devices and read data from BLE.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'This Pod will allow users to connect with MedCheck BLE Devices and read data from BLE. This SDK will return data.'

  s.homepage         = 'https://github.com/smartfuturesg/MedCheckSDK_source_iOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sumit Khemani' => 'sumit@oursmartfuture.com' }
  s.source           = { :git => 'https://github.com/smartfuturesg/MedCheckSDK_source_iOS.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.source_files = 'MedCheckPod/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MedCheckPod' => ['MedCheckPod/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
