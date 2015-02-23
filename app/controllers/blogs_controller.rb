class BlogsController < ApplicationController

  expose(:articles){ Article.all }
  expose(:article){ Article.find(params[:id]) }

  def index; end
  def show;  end

end
