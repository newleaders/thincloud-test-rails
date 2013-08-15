# -*- encoding: utf-8 -*-
require File.expand_path("../lib/thincloud/test/rails/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "thincloud-test-rails"
  gem.version       = Thincloud::Test::Rails::VERSION
  gem.authors       = ["Phil Cohen", "Don Morrison"]
  gem.email         = ["pcohen@newleaders.com", "dmorrison@newleaders.com"]
  gem.description   = "Opinionated testing framework dependencies and " <<
                      "configuration for Rails applications."
  gem.summary       = "Opinionated testing framework dependencies and " <<
                      "configuration for Rails applications."
  gem.homepage      = "http://newleaders.github.com/thincloud-test-rails"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "rails",                   "~> 3.2.12"
  gem.add_dependency "capybara",                "~> 2.0.2"
  gem.add_dependency "database_cleaner",        "~> 0.9.1"
  gem.add_dependency "factory_girl_rails",      "~> 4.2.1"
  gem.add_dependency "minitest-rails",          "~> 0.5.0"
  gem.add_dependency "minitest-rails-capybara", "~> 0.5.1"
  gem.add_dependency "thincloud-test",          "~> 1.0.0"
end
