ENV['RAILS_ENV'] ||= 'test'

if ENV['COVERAGE']
  require 'simplecov'
  require 'simplecov-rcov'
  require 'simplecov-rcov-text'

  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::RcovFormatter,
    SimpleCov::Formatter::RcovTextFormatter,
  ]
  SimpleCov.start 'rails'
end

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

module ActiveSupport
  class TestCase
    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all
  end
end
