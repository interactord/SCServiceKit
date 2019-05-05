Pod::Spec.new do |s|

    s.name         = "SCServiceKit"
    s.version      = "1.0.0"
    s.summary      = "SCServiceKit is Network framework for iOS applications, based on a Clean Archecture."
    s.description  = <<-DESC
  SCServiceKit aim to
  * Promote reactive programing
                     DESC
  
    s.homepage     = "https://github.com/interactord/SCServiceKit"
    s.license      = { :type => "MIT", :file => "LICENSE.md" }
    s.authors      = { "Scoon Moon" => "interactord@gmail.com" }
    s.platform     = :ios
    s.platform     = :ios, "12.2"
    s.swift_version = '5.0'
    s.pod_target_xcconfig = {
      'SWIFT_VERSION' => '5.0'
    }
    s.source       = { :git => "https://github.com/interactord/SCServiceKit.git", :tag => s.version.to_s }
    s.source_files  = "SCServiceKit/**/*.swift"
    s.frameworks  = 'UIKit', 'Foundation'
    s.requires_arc     = true  
    s.dependency 'RxSwift', '>= 4.5.0'
    s.dependency 'SwiftyBeaver', '>= 1.7.0'
  
  end