Pod::Spec.new do |s|
  s.name             = 'AlmunasiQ'
  s.version          = '1.0.0'
  s.summary          = 'AlmunasiQ is an elegant and easy to use Formatter'

  s.description      = <<-DESC
AlmunasiQ is an elegant and easy to use Formatter based on PropertyWrapper.
                       DESC

  s.homepage         = 'https://github.com/KarimEbrahemAbdelaziz/AlmunasiQ'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Karim Ebrahem' => 'karimabdelazizmansour@gmail.com' }
  s.source           = { :git => 'https://github.com/KarimEbrahemAbdelaziz/AlmunasiQ.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/k_ebrahem_'

  s.source_files = 'Sources/**/*.swift'

  s.swift_versions = ['5.1']
  s.requires_arc          = true
  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.watchos.deployment_target = '6.0'
  s.tvos.deployment_target = '13.0'
  
  s.source_files = 'Sources/**/*.swift'  
  s.frameworks = 'Foundation'
end
