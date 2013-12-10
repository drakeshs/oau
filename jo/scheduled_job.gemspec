# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scheduled_job/version'

Gem::Specification.new do |gem|
  gem.add_dependency 'delayed_job'

  gem.name          = "scheduled_job"
  gem.version       = ScheduledJob::VERSION
  gem.authors       = ["Claudio Carotenuto"]
  gem.email         = ["cc@innovahub.com"]
  gem.description   = %q{Scheduled Job for DelayedJob}
  gem.summary       = %q{Scheduled Job for DelayedJob}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
