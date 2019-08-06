class BlogsController < ApplicationController
  before_action :authenticate_user!

  def follow
    set_blog
    current_user.follow(@blog)
    @follow = Follow.find_by(follower: current_user, followable: @blog)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js # <-- will render `app/views/blogs/follow.js.erb`
    end
    set_feed
  end

  def unfollow
    set_blog
    set_feed
    current_user.stop_following(@blog)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { render action: :follow }
    end
    set_feed
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def set_feed
    @all_blogs = Blog.all
    @all_posts = Post.all.order('published desc')

    @my_blogs = current_user.all_following

    @my_posts = @all_posts.select { |post| @my_blogs.include?(post.blog) }
  end
end
