Pod::Spec.new do |s|
    s.name             = "Common"
    s.version          = "1.0.1"
    s.summary          = ""
    s.description      = "Common files."
  
    s.homepage         = "https://github.com/IzumiShaka-desu/Common"
    s.license          = 'MIT'
    s.author           = 'IzumiShaka-desu'
    s.source           = { :git => "https://github.com/IzumiShaka-desu/Common", :tag => s.version.to_s }
  
    s.swift_version    = '5.1'
    s.source_files     = 'Sources/**/*.{swift,h}'
  
    s.ios.deployment_target     = '14'
    s.osx.deployment_target     = '11'
  end
