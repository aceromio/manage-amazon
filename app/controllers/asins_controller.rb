class AsinsController < ApplicationController
  def index
    @asin = Asin.new
    @asins = Asin.all
  end
  def edit
  end
  def update
    if @stock.update(stock_params)
      redirect_to inventories_path , notice: '配送業者を打ち込みました'
    else
      render 'edit'
    end
  end
end
