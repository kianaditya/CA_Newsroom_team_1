# frozen_string_literal: true

require 'coveralls'
Coveralls.wear_merged!('rails')
require 'cucumber/rails'
require 'webmock/cucumber'
require_relative 'weather_api_mock'

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise 'You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it.'
end

World(FactoryBot::Syntax::Methods)

Cucumber::Rails::Database.javascript_strategy = :truncation

WebMock.allow_net_connect!
Chromedriver.set_version '2.42'
WebMock.disable_net_connect!(allow_localhost: true)



chrome_options = %w[no-sandbox disable-popup-blocking disable-infobars]

chrome_options << 'auto-open-devtools-for-tabs'

Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
    args: %w[headless disable-popup-blocking disable-infobars]
  )

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: options
  )
end



Capybara.javascript_driver = :selenium

Before do
  mock_weather_api
end

Before '@stripe' do
  chrome_options << 'headless'
  StripeMock.start
end

After '@stripe' do
  StripeMock.stop
end

After '@javascript' do 
  # FileUtils.rm_rf("#{Rails.root}/tmp/storage")
end