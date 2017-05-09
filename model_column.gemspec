# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'model_column/version'

Gem::Specification.new do |spec|
  spec.name          = "model_column"
  spec.version       = ModelColumn::VERSION
  spec.authors       = ["Joel AZEMAR"]
  spec.email         = ["joel.azemar@gmail.com"]

  spec.summary       = %q{Let define columns in a basic class}
  spec.description   = %q{The purpose is to define columns in a simple class to let use ActiveModel::Validations}
  spec.homepage      = "https://github.com/FinalCAD/model_column"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "inherited_class_var", "= 1.0.0.beta1"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake",    "~> 10.0"
  spec.add_development_dependency "rspec",   "~> 3.0"
end
