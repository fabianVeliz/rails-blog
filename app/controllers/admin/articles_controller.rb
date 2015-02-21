class Admin::ArticlesController < InheritedResources::Base

  def create
    @article = Article.new(article_params)
    @article.categories = Category.find(params[:article][:categories].reject(&:blank?))
    create!{ admin_articles_path }
  end
  private

    def article_params
      params.require(:article).permit(:title, :tags, :image, :body)
    end
end

