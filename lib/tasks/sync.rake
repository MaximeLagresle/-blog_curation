require 'open-uri'
require 'nokogiri'
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


        # local_entry = Post.create! title: entry.title, description: entry.summary, url: entry.url, blog: blog
        # tweet = Medium.create! title: tweet.id, content: tweet.full_text, url: tweet.uri, influencer: influencer.influencer, format: format_tweet, platform: platform_tweet

        # local_entry = blog.entry.where(title: entry.title).first_or_initialize
        # local_entry.update_attributes(description: entry.description, url: entry.url)
        p "Synced Entry - #{entry.title}"
      end
      p "Synced Blog - #{blog.name}"
    end
  end
end
