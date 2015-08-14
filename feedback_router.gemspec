# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'feedback_router/version'

Gem::Specification.new do |spec|
  spec.name          = "feedback_router"
  spec.version       = FeedbackRouter::VERSION
  spec.authors       = ["Elliott Young"]
  spec.email         = ["elliott.a.young@gmail.com"]
  spec.summary       = "A Gem that allows you to funel all of your Feedback into one Convenient Location."
  spec.description   = "A Gem that allows you to funel all of your Feedback into one Convenient Location for you to review and integrate."
  spec.homepage      = "https://github.com/ElliottAYoung/FeedbackRouter"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "faraday"
end
