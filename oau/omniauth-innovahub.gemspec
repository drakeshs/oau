# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-innovahub/version'

Gem::Specification.new do |gem|
  gem.add_dependency 'omniauth-oauth2'

  gem.name          = "omniauth-innovahub"
  gem.version       = Omniauth::Innovahub::VERSION
  gem.authors       = ["Claudio Carotenuto"]
  gem.email         = ["cc@innovahub.com"]
  gem.description   = %q{Omniauth strategy for InnovaHub}
  gem.summary       = %q{Omniauth strategy for InnovaHub}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
