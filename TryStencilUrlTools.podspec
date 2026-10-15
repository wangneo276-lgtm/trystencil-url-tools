Pod::Spec.new do |spec|
  spec.name = 'TryStencilUrlTools'
  spec.version = '0.1.1'
  spec.summary = 'Offline URL helpers for TryStencil'
  spec.description = 'Offline URL builder for TryStencil tattoo generator, try-on, stencil, and idea pages. Not an official SDK.'
  spec.homepage = 'https://trystencil.org/'
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { 'bbwdadfg' => 'https://trystencil.org/' }
  spec.source = { :git => 'https://github.com/wangneo276-lgtm/trystencil-url-tools.git', :tag => 'v0.1.1' }
  spec.source_files = 'swift/Sources/**/*.swift'
  spec.ios.deployment_target = '13.0'
  spec.osx.deployment_target = '10.15'
  spec.swift_version = '5.7'
end
