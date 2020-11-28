ENV["RAILS_ENV"] ||= "test"
require_relative '../config/environment'
require 'rails/test_help'

Minitest::Reporters.use!(
  Minitest::Reporters::SpecReporter.new,
  ENV,
  Minitest.backtrace_filter
)

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :minitest
    with.library :rails
  end
end

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  set_fixture_class :series => Serie
  fixtures :all

  def assert_valid(record, message = nil)
    message ||= "Expected #{record.inspect} to be valid"
    assert record.valid?, "#{message} ==> #{record.errors.full_messages}"
  end

  def assert_invalid(record, options = {})
    assert record.invalid?, "Expected #{record.inspect} to be invalid"
    options.each do |attribute, message|
      assert_includes record.errors[attribute], message
    end
  end
end
