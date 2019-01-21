require 'open-uri'
class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    get_weather
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def get_weather
    result = request.location
    ip = result.data['ip']
    location = Geocoder.search(ip)
    lat = location.first.coordinates[0] || "59.35" 
    lon = location.first.coordinates[1] || "18.05" 
    url = "https://fcc-weather-api.glitch.me/api/current?lat=#{lat}&lon=#{lon}"
    response = JSON.parse(open(url).read)
    current_temp = response['main']['temp']
    min_temp = response['main']['temp_min']
    max_temp = response['main']['temp_max']
  end

end



