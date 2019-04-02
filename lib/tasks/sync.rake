
require 'pry-byebug'

# https://www.sitepoint.com/building-an-rss-reader-in-rails-is-easy/

namespace :sync do
  task blogs: [:environment] do
    Blog.all.each do |blog|
      content = Feedjira::Feed.fetch_and_parse blog.url
      content.entries.each do |entry|
        if Post.where(:title => entry.title).blank?
          # no truck record for this id
          local_entry = Post.create! title: entry.title, description: entry.summary, url: entry.url, published: entry.published, blog: blog
        end
        p "Synced Entry - #{entry.title}"
      end
      p "Synced Blog - #{blog.name}"
    end
  end
end
