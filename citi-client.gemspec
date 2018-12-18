
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "citi/client/version"

Gem::Specification.new do |spec|
  spec.name          = "citi-client"
  spec.version       = Citi::Client::VERSION
  spec.authors       = ["Ren"]
  spec.email         = ["renlesterdeguzman@gmail.com"]

  spec.summary       = %q{Citibank's client library for Ruby}
  spec.description   = %q{Citibank's client Side for Ruby}
  spec.homepage      = "https://github.com/renlesterdg/citi-client"
  spec.licenses      = ["Apache-2.0"]

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "openssl-ccm", "~> 1.2.1"
  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.7"
end
