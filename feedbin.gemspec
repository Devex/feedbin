require_relative 'lib/feedbin/version'

Gem::Specification.new do |spec|
  spec.name          = "feedbin"
  spec.version       = Feedbin::VERSION
  spec.authors        = ["Colby Aley", "Agusti B.R."]
  spec.email         = "colby@aley.me"
  spec.description   = %q{A Ruby wrapper for the Feedbin API}
  spec.summary       = %q{Ruby wrapper for the Feedbin API}
  spec.homepage      = "https://github.com/ColbyAley/feedbin"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "httparty"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~>  3.0"
  spec.add_development_dependency "webmock", "~> 3.0"
end
