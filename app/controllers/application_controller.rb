class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale
  before_action :get_weather
  def configure_permitted_parameters
    attributes = [:first_name, :last_name]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
  end
end

def set_locale
  I18n.locale = I18n.available_locales.include?(params[:locale]&.to_sym) ? params[:locale] : I18n.default_locale
end

def get_weather
  result = request.location
  ip = result.data['ip']
  location = Geocoder.search(ip)
  @city = location.first.city || "Stockholm"
  lat = location.first.coordinates[0] || "59.35" 
  lon = location.first.coordinates[1] || "18.05" 
  url = "https://fcc-weather-api.glitch.me/api/current?lat=#{lat}&lon=#{lon}"
  response = JSON.parse(open(url).read)
  @current_temp = response['main']['temp']
  @min_temp = response['main']['temp_min']
  @max_temp = response['main']['temp_max']
  @icon = response['weather'][0]['icon'] || ''
end
