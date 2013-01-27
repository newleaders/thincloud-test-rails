class RoutingSpec < MiniTest::Rails::ActiveSupport::TestCase
  include ::ActionDispatch::Assertions::RoutingAssertions
  include ::Rails.application.routes.url_helpers

  # Test subjects containing 'Routes' are treated as Routing tests
  #   e.g. describe "Product Routes" do ...
  register_spec_type /Routes/, self

  before do
    @routes = ::Rails.application.routes
  end
end
