class ArticlesController < ApplicationController

  def index
    @index_article = Article.first
    @secondary_articles = Article.all[1..2]
    @articles = Article.all[3..-1]

  end

  def show
    @article = Article.find(params[:id])
  end

end

