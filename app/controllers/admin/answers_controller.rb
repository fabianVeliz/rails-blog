class Admin::AnswersController < InheritedResources::Base
  before_action :authenticate_admin!

  private

    def answer_params
      params.require(:answer).permit(:author, :avatar, :body, :comment_id)
    end
end

