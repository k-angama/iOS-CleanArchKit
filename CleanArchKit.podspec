
Pod::Spec.new do |s|
  s.name             = 'CleanArchKit'
  s.version          = '0.1.3'
  s.swift_version    = "5.0"
  s.summary          = 'An iOS library to create a project with the Clean Architecture using Router and MVVM pattern.'

  s.description      = <<-DESC
CleanArchKit is an iOS framework developed in Swift that implements Clean Architecture in a project using the MVVM (Model-View-ViewModel) pattern, as well as Router for managing navigation between screens. It provides base classes for view controllers, view models, and routers, as well as protocols for input and output of view models.
DESC

  s.homepage         = 'https://github.com/k-angama/iOS-CleanArchKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kangama' => 'karim.angama@gmail.com' }
  s.source           = { :git => 'https://github.com/k-angama/iOS-CleanArchKit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/k_angama'

  s.ios.deployment_target = '11.0'

  s.source_files = 'CleanArchKit/**/*.{swift}'
  s.exclude_files = 'CleanArchKit/CleanArchKitTests/**/*.{swift}'
  
  s.frameworks = 'UIKit'
  
end
