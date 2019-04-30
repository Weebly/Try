Pod::Spec.new do |s|
  s.name         = "Try"
  s.version      = "2.1.1"
  s.summary      = "Handle Objective-C Exceptions with Swift's error handling system"
  s.description  = <<-DESC
Easily wrap Objective-C APIs that throw Objective-C Exceptions into Swift's error
handling system.
                   DESC
  s.homepage     = "https://github.com/Weebly/Try"
  s.license      = "MIT"
  s.author    = "Weebly"
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/Weebly/Try.git", :tag => "v2.1.1" }
  s.source_files  = "Try/trap.swift", "Try/WBTry.h", "Try/WBTry.m"
  s.requires_arc = true
  s.swift_version = "5.0"
end
