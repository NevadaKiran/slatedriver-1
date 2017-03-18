ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails'
require 'minitest/rails/capybara'
require 'minitest/given'
require 'minitest/nyan_cat'

Dir[File.expand_path('test/support/*.rb')].each { |file| require file }
include TestMatchers
include FactoryGirl::Syntax::Methods

class ActiveSupport::TestCase

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  # fixtures :all

  # Add more helper methods to be used by all tests here...
end
