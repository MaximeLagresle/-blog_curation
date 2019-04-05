class BlogsController < ApplicationController
  before_action :authenticate_user!

  def show

    # Initialize instance variables
    @blog = Blog.find(params[:id])
    @all_blogs = Blog.all

    # Initialize Blog list for user

  end

end
