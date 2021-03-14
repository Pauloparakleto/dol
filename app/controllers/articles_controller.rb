class ArticlesController < ApplicationController
  def index
    @articles = current_user.articles
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.create(articles_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  private

  def articles_params
    params.require(:article).permit(:title, :sub_title, :content)
  end

end
