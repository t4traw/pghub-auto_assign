# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pghub/auto_assign/version"

Gem::Specification.new do |spec|
  spec.name          = "pghub-auto_assign"
  spec.version       = Pghub::AutoAssign::VERSION
  spec.authors       = ["ebkn12, akias, Doppon, seteen, mryoshio, sughimura"]
  spec.email         = ["developers@playground.live"]

  spec.summary       = "Automatically assign and review request members to your pull request."
  spec.description   = "This gem automatically assigns and request review members when your pull request open."
  spec.homepage      = "http://tech-blog.playground.live"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "pghub-base", ">= 1.1.1"
end
