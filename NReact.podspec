Pod::Spec.new do |s|
  s.name         = "NReact"
  s.version      = "0.0.0"
  s.summary      = "NReact"
  s.homepage     = "http://corner.com"
  s.license      = "MIT"
  s.author       = "Nghia Nguyen"
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/nghiaphunguyen/NReact.git", :tag => s.version}
  s.source_files  = "Classes", "NReact/Source/**/*.{swift}"
  s.requires_arc = true
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

  s.dependency 'RxSwift'
end
