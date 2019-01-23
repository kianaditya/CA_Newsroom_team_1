require 'coveralls'
Coveralls.wear_merged!('rails')
require 'cucumber/rails'
require 'webmock/cucumber'
require_relative 'weather_api_mock'

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

World(FactoryBot::Syntax::Methods)

Cucumber::Rails::Database.javascript_strategy = :truncation

Chromedriver.set_version '2.42'

chrome_options = %w[no-sandbox disable-popup-blocking disable-infobars]

chrome_options << 'auto-open-devtools-for-tabs'

Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
    args: %w( headless disable-popup-blocking disable-infobars)
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

def mock_weather_api
  mock_json =  "{\"coord\":{\"lon\":18.05,\"lat\":59.35},\"weather\":[{\"id\":701,\"main\":\"Mist\",\"description\":\"mist\",\"icon\":\"https://cdn.glitch.com/6e8889e5-7a72-48f0-a061-863548450de5%2F50d.png?1499366021771\"}],\"base\":\"stations\",\"main\":{\"temp\":-3.46,\"pressure\":1009,\"humidity\":100,\"temp_min\":-6,\"temp_max\":-1},\"visibility\":8000,\"wind\":{\"speed\":1.5,\"deg\":240},\"clouds\":{\"all\":90},\"dt\":1548238800,\"sys\":{\"type\":1,\"id\":1788,\"message\":0.0035,\"country\":\"SE\",\"sunrise\":1548227809,\"sunset\":1548254591},\"id\":2698691,\"name\":\"Kungsholmen\",\"cod\":200}"
  stub_request(:get, "https://fcc-weather-api.glitch.me/api/current?lat=59.35&lon=18.05").
  with(
    headers: {
    'Accept':'*/*',
    'Accept-Encoding':'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
    'User-Agent':'Ruby'
    }).
  to_return(status: 200, body: mock_json, headers: {})
end