class MiniTest::Rails::ActiveSupport::TestCase
  # Register any classes that respond to validate to a specific test class
  Minitest::Spec.register_spec_type(self) do |desc|
    desc.respond_to?(:validate)
  end
end

MiniTest::Rails.override_testunit!
