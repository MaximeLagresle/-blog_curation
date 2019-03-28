class PagesController < ApplicationController
  def home
    @all_posts = Post.all
    @all_blogs = Blog.all
  end
end
