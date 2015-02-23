class Admin::AnswersController < InheritedResources::Base
  before_action :authenticate_admin!

  belongs_to :article, :comment

  private

    def answer_params
      params.require(:answer).permit(:author, :avatar, :body, :comment_id)
    end
end

