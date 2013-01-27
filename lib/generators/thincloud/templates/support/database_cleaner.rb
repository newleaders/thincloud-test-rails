DatabaseCleaner.strategy = :transaction
DatabaseCleaner.clean_with :truncation

class MiniTest::Spec
  before :each do
    DatabaseCleaner.start
  end

  after :each do
    DatabaseCleaner.clean
  end
end
