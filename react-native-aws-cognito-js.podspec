require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.author       = package['author']
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.source       = { :git => "https://github.com/airlabsteam/react-native-aws-cognito-js", :tag => s.version }
  s.platform     = :ios, "8.0"
  s.source_files = "ios/*.{h,m}"
  s.requires_arc = true

  s.dependency "JKBigInteger"
end

