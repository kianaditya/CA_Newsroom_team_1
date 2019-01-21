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
    location = Geocoder.search(result.data['ip'])

    response = JSON.parse(open('https://fcc-weather-api.glitch.me/api/current?lat=35&lon=139').read)

  end

end



