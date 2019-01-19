require 'news-api' 

class ArticlesController < ApplicationController

  def index
    @articles = Article.all

    newsapi = News.new(Rails.application.credentials.news_api[:secret_key])

    @sources = ["bbc-news","buzzfeed"]

    @all_articles = newsapi.get_top_headlines(sources: @sources.join(', '))
  end

  def show
    @article = Article.find(params[:id])
  end

end

