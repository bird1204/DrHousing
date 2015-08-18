require 'open-uri'
class Estate < ActiveRecord::Base
  #attr_accessible :name, :address ,:size ,:mainSize ,:age, :floor, :unitPrice, :price

  has_many :properties
  has_many :estate_types

  def get_estate_success?(url)
    url = "http://buy.yungching.com.tw/house/1335260"
    #http://buy.sinyi.com.tw/house/31048F.html
    doc = Nokogiri::HTML(open(url))
    p doc 

  end
end

#Estate::get_estate_success
# require 'nokogiri'
# require 'open-uri'

# # Fetch and parse HTML document
# doc = Nokogiri::HTML(open('http://www.nokogiri.org/tutorials/installing_nokogiri.html'))

# ####
# # Search for nodes by css
# doc.css('nav ul.menu li a').each do |link|
#   puts link.content
# end

# ####
# # Search for nodes by xpath
# doc.xpath('//h2 | //h3').each do |link|
#   puts link.content
# end

# ####
# # Or mix and match.
# doc.search('code.sh', '//h2').each do |link|
#   puts link.content
# end
