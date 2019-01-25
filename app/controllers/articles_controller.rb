class ArticlesController < ApplicationController

  def index
    if params[:category].present?
      @articles = Article.where(category_id: params[:category]).order(:id)
    else
      @articles = Article.all.order(:id)
    end
  end

  def show
    @article = Article.find(params[:id])
  end

end

