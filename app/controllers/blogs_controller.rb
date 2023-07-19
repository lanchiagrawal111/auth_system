class BlogsController < ApplicationController

  before_action :authenticate_user
  before_action :set_user

  def index
    @blogs = Blog.all
  end

  def current_user_blogs
    @blogs = @current_user.blogs
  end
end


