#
# Be sure to run `pod lib lint HannahUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HannahUIKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of HannahUIKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/HannahZheng/HannahUIKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HannahZheng' => 'zhenghan1221@163.com' }
  s.source           = { :git => 'https://github.com/HannahZheng/HannahUIKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
#HannahUIKit/Classes/**/*
  s.source_files = 'HannahUIKit/**.h',
  
  # s.resource_bundles = {
  #   'HannahUIKit' => ['HannahUIKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
   s.dependency 'Masonry'
   s.dependency 'MJRefresh'
   s.dependency 'MBProgressHUD'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.prefix_header_contents =
  '#import "Masonry.h"',
  '#import "MJRefresh.h"',
  '#import "MBProgressHUD.h"'

#导航 uiviewController
s.subspec 'HHNavgationKit' do |spec|
spec.source_files = 'HannahUIKit/Classes/HHNavgationKit/**/*'
spec.resource = 'HannahUIKit/Classes/HHNavgationKit/*.png'
end

#TabBar
s.subspec 'HHTabKit' do |spec|
    spec.source_files = 'HannahUIKit/Classes/HHTabKit/**/*'
    # spec.resource = 'HannahUIKit/Classes/HHTabKit/*.png'
end


#HHHudTool
s.subspec 'HHHudTool' do |spec|
    spec.source_files = 'HannahUIKit/Classes/HHHudTool/**/*'
end

end
