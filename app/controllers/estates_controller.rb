require 'open-uri'
class EstatesController < ApplicationController
  def new
    @estate = Estate.new
    url = "http://buy.yungching.com.tw/house/1335260"
    #http://buy.sinyi.com.tw/house/31048F.html
    @doc = Nokogiri::HTML(open(url))   
    @result = @doc.to_s[/建物坪數/]


  end
  def create
    estate = Estate.new(estates_params)
    estate.save!
  end
  private
    def estates_params
      params.require(:estates).permit(:name, :address ,:size ,:mainSize ,:age, :floor, :unitPrice, :price)
    end
end
