ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require File.expand_path("../../config/environment", __FILE__)
require 'rails/test_help'
require 'shoulda/matchers'

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    # Choose a test framework:
    # with.test_framework :rspec
    with.test_framework :minitest
    # with.test_framework :minitest_4
    # with.test_framework :test_unit

    # Choose one or more libraries:
    with.library :active_record
    with.library :active_model
    with.library :action_controller    # Or, choose all of the above:

    with.library :rails
  end
end

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  include FactoryBot::Syntax::Methods
end

# ENV["RAILS_ENV"] ||= "test"
# require File.expand_path("../../config/environment", __FILE__)
# require "rails/test_help"
#
# class ActiveSupport::TestCase
#   include FactoryBot::Syntax::Methods
# end
