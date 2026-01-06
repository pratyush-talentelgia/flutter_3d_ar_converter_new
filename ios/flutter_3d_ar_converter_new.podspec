#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_3d_ar_converter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_3d_ar_converter_new'
  s.version          = '0.1.2'
  s.summary          = 'A forked Flutter package of original flutter_3d_ar_converter for converting images to 3D models with AR visualization capabilities.'
  s.description      = <<-DESC
A forked Flutter package of original flutter_3d_ar_converter for converting images to 3D models with AR visualization capabilities.
                       DESC
  s.homepage         = 'https://github.com/pratyush-talentelgia/flutter_3d_ar_converter_new'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Pratyush' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
  
  # ARKit dependency
  s.frameworks = 'ARKit', 'SceneKit', 'UIKit'
end
