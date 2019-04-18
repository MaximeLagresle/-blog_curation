class BlogsController < ApplicationController
  before_action :authenticate_user!

  def list
    @all_blogs = Blog.all
  end

  # def show
  #   # Initialize instance variables
  #   @blog = Blog.find(params[:id])
  # end

  def follow
    set_blog
    current_user.follow(@blog)
    @follow = Follow.find_by(follower: current_user, followable: @blog)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def unfollow
    set_blog
    current_user.stop_following(@blog)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { render action: :follow }
    end
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end
end
