class ArticlesController < InheritedResources::Base

  private

    def article_params
      params.require(:article).permit(:title, :tags, :image, :body)
    end
end

