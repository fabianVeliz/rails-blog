class Admin::CommentsController < InheritedResources::Base
  before_action :authenticate_admin!

  private

    def comment_params
      params.require(:comment).permit(:author, :avatar, :body, :post, :article_id, :answers)
    end
end

