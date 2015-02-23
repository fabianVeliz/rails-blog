class User::CommentsController < InheritedResources::Base
  before_action :authenticate_user!

  belongs_to :article

  private

    def comment_params
      params.require(:comment).permit(:author, :avatar, :body, :post, :article_id, :answers)
    end
end

