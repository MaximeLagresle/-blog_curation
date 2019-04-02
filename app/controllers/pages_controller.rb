class PagesController < ApplicationController
  def home
    @all_posts = Post.all.order('published desc')
    @all_blogs = Blog.all
  end
end
