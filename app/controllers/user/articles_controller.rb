class User::ArticlesController < ApplicationController
  before_action :authenticate_user!

  expose(:articles){ Article.all }
  expose(:article){ Article.find(params[:id]) }

  def index; end
  def show;  end

end

