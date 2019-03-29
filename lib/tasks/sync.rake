require 'open-uri'
require 'nokogiri'
require 'pry-byebug'

# ingredient = 'chocolate'
# url = "http://www.letscookfrench.com/recipes/find-recipe.aspx?s=#{ingredient}"

# html_file = open(url).read
# html_doc = Nokogiri::HTML(html_file)

# html_doc.search('.m_titre_resultat a').each do |element|
#   puts element.text.strip
#   puts element.attribute('href').value
# end

namespace :sync do
  task blogs: [:environment] do
    Blog.all.each do |blog|
      content = Feedjira::Feed.fetch_and_parse blog.url
      content.entries.each do |entry|
        local_entry = Post.create! title: entry.title, description: entry.summary, url: entry.url
        # tweet = Medium.create! title: tweet.id, content: tweet.full_text, url: tweet.uri, influencer: influencer.influencer, format: format_tweet, platform: platform_tweet

        # local_entry = blog.entry.where(title: entry.title).first_or_initialize
        # local_entry.update_attributes(description: entry.description, url: entry.url)
        # p "Synced Entry - #{entry.title}"
      end
      p "Synced Blog - #{blog.name}"
    end
  end
end

# namespace :sync do
#   task blogs: [:environment] do
#     Blog.all.each do |blog|
#       content = Nokogiri::XML(blog.url)
#       content.posts.each do |post|
#         local_post = blog.posts.where(title: post.title).first_or_initialize
#         local_post.update_attributes(description: post.description, url: post.url)
#         p "Synced Entry - #{post.title}"
#       end
#       p "Synced Blog - #{blog.name}"
#     end
#   end
# end
