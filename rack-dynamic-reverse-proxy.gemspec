# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "rack-dynamic-reverse-proxy"
  spec.version       = '0.0.1'
  spec.authors       = ["Shogo Kawaguchi"]
  spec.email         = ["platycod0n.ramosa@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://mygemserver.com"
  end

  spec.summary       = %q{A Dynamic Reverse Proxy for Rack}
  spec.description   = %q{A Dynamic Reverse Proxy for Rack}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "rack", ">= 1.0.0"
  spec.add_dependency "rack-proxy", "~> 0.5"
end
