require 'pry-byebug'
require 'nokogiri'
require 'open-uri'

# https://www.sitepoint.com/building-an-rss-reader-in-rails-is-easy/
# https://stackoverflow.com/questions/33889264/get-feeds-source-with-feedjira-gem

namespace :sync do
  task blogs: [:environment] do
    Blog.all.each do |blog|
      content = Feedjira::Feed.fetch_and_parse blog.url
      content.entries.each do |entry|
        # binding.pry
        if Post.where(title: entry.title).blank?
          # binding.pry
          # no track record for this id
          local_entry = Post.create! title: entry.title,
          description: entry.summary,
          url: entry.url,
          published: entry.published,
          blog: blog,
          image: entry.image
        end
        p "Synced Entry - #{entry.title}"
      end
      p "Synced Blog - #{blog.name}"
    end
  end
end

# namespace :sync do
#   task blogs: [:environment] do
#     Blog.all.each do |blog|
#       doc = Nokogiri::XML(open(blog.url))
#       img = doc.css("img").attribute('src').to_s
#       doc.xpath('//item').map do |entry|
#       binding.pry
#         if Post.where(title: entry.title).blank?
#           # no track record for this id
#           Post.create! title: entry.title,
#           description: entry.summary,
#           url: entry.url,
#           published: entry.published,
#           blog: blog,
#           image: entry.content.img
#         end
#       end
#     end
#   end
# end
