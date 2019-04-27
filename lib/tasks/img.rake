require 'nokogiri'
require 'open-uri'
require 'pry-byebug'

namespace :sync do
  task img: [:environment] do
    Blog.all.each do |blog|
      doc = Nokogiri::HTML.parse(blog.url)

      img = doc.xpath("//description/img[@class='photo-large']/@src").to_s
      binding.pry
    end
  end
end


# ingredient = 'chocolate'
# url = "http://www.letscookfrench.com/recipes/find-recipe.aspx?s=#{ingredient}"

# html_file = open(url).read
# html_doc = Nokogiri::HTML(html_file)

# html_doc.search('.m_titre_resultat a').each do |element|
#   puts element.text.strip
#   puts element.attribute('href').value
# end


# def index
#       require 'nokogiri'
#       doc = Nokogiri::XML(open("http://sports.yahoo.com/top/rss.xml"))

#       @links = doc.xpath('//item').map do |i|
#       {'title' => i.xpath('title'), 'link' => i.xpath('link'), 'description' => i.xpath('description')}
#       end
#   end
