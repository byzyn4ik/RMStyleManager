#
# Be sure to run `pod lib lint RMStyleManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "RMStyleManager"
  s.version          = "0.1.0"
  s.summary          = "RMStyleManager is style manager for your application working in xibs, storyboards and from code."
  s.description      = "RMStyleManager is style manager for your application working in xibs, storyboards and from code. You can simply set style filed in component user info to set style. To define style simply create category for RMStyleManager. The style string from compenent will use style from Style Manager."
  

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
  s.homepage         = "https://github.com/byzyn4ik/RMStyleManager"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Maks Petrovsky" => "petrovskiy@real.me" }
  s.source           = { :git => "https://github.com/byzyn4ik/RMStyleManager.git", :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'

  s.source_files = 'RMStyleManager/Classes/**/*'
  s.resource_bundles = {
    'RMStyleManager' => ['RMStyleManager/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'UIColor+InputMethods'
  s.dependency 'UIImage+ImageWithColor'
end
