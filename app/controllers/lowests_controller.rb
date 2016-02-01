class LowestsController < ApplicationController
  def index
    @lowest = Lowest.new
    @lowests = Lowest.all
  end
  def create
    @lowest = current_user.lowests.build(research_params)
    if @lowest.save
      binding.pry
      @asin = @lowest.asin
      @url = "http://www.amazon.co.jp/gp/offer-listing/"+ @asin
      @doc = Nokogiri::HTML(open(@url).read)
      @doc.xpath('//span[@class ="a-size-large a-color-price olpOfferPrice a-text-bold"]/').each do |node|
      @lowest.update_attribute(:amazon,node)
      end

      redirect_to lowests_path
    else
      render 'new'
    end
  end
  def update
  end
      private
  def research_params
    params.require(:lowest).permit(:asin)
  end
end
