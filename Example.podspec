require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = package['name']
  s.version        = package['version']
  s.summary                = "Testing go insert RN inside IOS"
  s.description            = <<-DESC
                              Testing go insert RN inside IOS
                              Testing go insert RN inside IOS
                              Testing go insert RN inside IOS
                             DESC
  s.homepage       = "https://github.com/juanvico/Example"
  s.source         = { :git => 'https://github.com/juanvico/Example.git', :tag => s.version }
 
  s.license        = "MIT"
  s.author                 = "Juan A. Vico"
  s.platforms              = { :ios => "11.0" }
  s.cocoapods_version      = ">= 1.10.1"
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }

  s.source_files   = 'ios/**/*.{h,m}'
  s.exclude_files = "ios/Example/*.plist"
  s.dependency 'React-Core'

end