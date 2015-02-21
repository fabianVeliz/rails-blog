class Admin::AnswersController < InheritedResources::Base

  private

    def answer_params
      params.require(:answer).permit(:author, :avatar, :body, :comment_id)
    end
end

