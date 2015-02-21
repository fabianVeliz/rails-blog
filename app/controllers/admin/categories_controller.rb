class Admin::CategoriesController < InheritedResources::Base
  before_action :authenticate_admin!

  private

    def category_params
      params.require(:category).permit(:name)
    end
end

