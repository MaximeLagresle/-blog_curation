class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @all_blogs = Blog.all
    @all_posts = Post.all.order('published desc')

    if user_signed_in?
      @my_blogs = current_user.all_following
      @my_posts = @all_posts.select { |post| @my_blogs.include?(post.blog) }
    else
      @my_blogs = [Blog.find_by_name('a16z'), Blog.find_by_name('Intercom')]
      @my_posts = @all_posts.select { |post| @my_blogs.include?(post.blog) }
      # binding.pry
    end
  end
end
