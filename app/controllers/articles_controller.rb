require 'news-api' 

class ArticlesController < ApplicationController

  def index
    @articles = Article.all

    newsapi = News.new(Rails.application.credentials.news_api[:secret_key])

    @all_articles = newsapi.get_top_headlines(sources: "bbc-news,buzzfeed")
  end

  def show
    @article = Article.find(params[:id])
  end

end

