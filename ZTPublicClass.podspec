Pod::Spec.new do |s|
s.name         = "ZTPublicClass"
s.version      = "0.0.1"
s.ios.deployment_target = '8.0'
s.summary      = "自用项目配置类"
s.homepage     = "https://github.com/NimoZone/ZTPublicClass"
s.social_media_url = 'https://www.jianshu.com/u/4cc459b806f9'
s.license      = "MIT"
# s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
s.author       = { "zyq" => "zhangyqyx@163.com" }
s.source        = { :git => 'https://github.com/NimoZone/ZTPublicClass', :tag => s.version}
s.requires_arc = true
s.source_files = 'Classes/*'
#s.public_header_files = 'runtime/TFRuntimeManager.h’
