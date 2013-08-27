require "rails"
require "thincloud/test/test_generator"

module Thincloud
  class TestGenerator < ::Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)

    def thincloud_test_init
      ::Thincloud::Test::TestGenerator.new.testify!(minitest: false)
    end

    desc "Generates thincloud test infrastructure."
    def test
      remove_test_unit

      setup_minitest_rails

      directory "support", "test/support"

      inject_into_file "config/application.rb", before: "if defined?(Bundler)" do
        <<-EOS
# initialize thincloud-test-rails
require "thincloud/test/rails/railtie"\n\n
        EOS
      end

      say_status "", ""
      say_status "success", "thincloud-test-rails has finished."
    end


    private

    def setup_minitest_rails
      generate "mini_test:install"

      remove_file "test/test_helper.rb"

      copy_file "test_helper.rb", "test/test_helper.rb"

      empty_directory "test/factories"
      create_file "test/factories/.gitkeep"
    end

    def remove_test_unit
      remove_file "test/test_helper.rb"

      remove_dir "test/functional"
      remove_dir "test/integration"
      remove_dir "test/performance"
      remove_dir "test/unit"
    end

  end
end
