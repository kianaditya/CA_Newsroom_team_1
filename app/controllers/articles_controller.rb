require 'news-api' 

class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    @newsapi = News.new(Rails.application.credentials.news_api[:secret_key])
    @sources = get_and_set_sources
    @all_articles = @newsapi.get_top_headlines(sources: @sources.join(', '))
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def get_and_set_sources
    sourcesArray = []
    returnArray = []
    source = params[:locals][:source]
    sources = @newsapi.get_sources(language: source)
    sources.each do |source|
      sourcesArray.push(source.id)
    end
    2.times do
      returnArray.push(sourcesArray[rand(sourcesArray.length)])
    end
    return returnArray
  end
end