if RUBY_ENGINE == "ruby"
  begin
    require "simplecov"
    SimpleCov.add_filter "test"
    SimpleCov.add_filter "config"
    SimpleCov.command_name "MiniTest"
    SimpleCov.start
  rescue LoadError
    warn "unable to load SimpleCov"
  end
end

ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)

require "minitest/autorun"
require "minitest/rails"
require "minitest/pride" # Provides awesome colorful output

# Uncomment if you want Capybara in accceptance/integration tests
# require "minitest/rails/capybara"

require "mocha/setup"

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.join("./test/support/**/*.rb")].sort.each { |f| require f }

class MiniTest::Rails::ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  # fixtures :all

  # Add more helper methods to be used by all tests here...
end

MiniTest::Rails.override_testunit!
