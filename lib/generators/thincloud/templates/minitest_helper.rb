if RUBY_ENGINE == "ruby"
  begin
    require "simplecov"
    SimpleCov.start "rails" do
      add_filter "test"
      add_filter "config"
      command_name "MiniTest"
    end
  rescue LoadError
    warn "unable to load SimpleCov"
  end
end

ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)

require "thincloud-test-rails"

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.join("./test/support/**/*.rb")].sort.each { |f| require f }
