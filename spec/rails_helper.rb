require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rspec/rails'
require 'factory_bot_rails'

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  # Método helper para parsear JSON
  config.include Module.new {
    def json
      JSON.parse(response.body)
    end
  }

  config.fixture_path = [Rails.root.join('spec/fixtures')]
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end
