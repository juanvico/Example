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
  
  # s.requires_arc   = true
  s.license        = "MIT"
  s.author                 = "Juan A. Vico"
  s.platforms              = { :ios => "11.0" }
  s.cocoapods_version      = ">= 1.10.1"
  # s.platform       ={ :ios => "11.0" }

  s.source_files   = 'ios/**/*.{h,m}'

end