require 'pry-byebug'

class PagesController < ApplicationController
  def home
    @all_blogs = Blog.all
    @all_posts = Post.all.order('published desc')

    @my_blogs = current_user.all_following

    @my_posts = @all_posts.select { |post| @my_blogs.include?(post.blog) }
  end
end
