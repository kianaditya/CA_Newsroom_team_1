class ArticlesController < ApplicationController

  def index
    if params[:category].present?
      article = Article.where(category_id: params[:category])
      @index_article = article.first
      @secondary_articles = article.all[1..2]
      @articles = article.all[3..-1]
    else
      @index_article = Article.first
      @secondary_articles = Article.all[1..2]
      @articles = Article.all[3..-1]
    end
  end

  def show
    @article = Article.find(params[:id])
  end

end

