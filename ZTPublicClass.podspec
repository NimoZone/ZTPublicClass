#
# Be sure to run `pod lib lint ZTPublicClass.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'ZTPublicClass'
s.version          = ‘0.0.1’
s.summary          = '自用项目配置类'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
ZTCalculateLayout

项目配置类，如颜色、自定义创建控件、判断机型使用SDAutoLayout约束值等等
DESC

s.homepage         = 'https://github.com/NimoZone/ZTPublicClass'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'say_goodbye' => 'say_goodbye000@163.com' }
s.source           = { :git => 'https://github.com/NimoZone/ZTPublicClass.gi', :tag => s.version.to_s }
s.social_media_url = 'hhttps://www.jianshu.com/u/4cc459b806f9'

s.ios.deployment_target = '8.0'

s.source_files = 'Classes', 'Classes/**/*.{h,m}'

# s.resource_bundles = {
#   'ZTCalculateLayout' => ['ZTCalculateLayout/Assets/*.png']
# }

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'
