Pod::Spec.new do |s|
  s.name             = 'CommentUIKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of CommentUIKit.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/tomboyt/CommentUIKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tomboyt' => 'tomboyt@163.com' }
  s.source           = { :git => 'https://github.com/tomboyt/CommentUIKit.git', :tag => s.version.to_s }
  s.source_files = 'CommentUIKit/**/*.{swift,framework}'
  s.platform = :ios, '9.0'
  s.swift_versions   = '5.0'
  s.requires_arc      = true
  s.static_framework  = true
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  s.subspec 'Vendors' do |ss|
      ss.vendored_frameworks   = 'CommentUIKit/Vendors/*.framework'
      ss.preserve_paths        = 'CommentUIKit/Vendors/*.framework'
      end
end
