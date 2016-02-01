class InventoriesController < ApplicationController
  before_action :set_stock, only: [:edit, :update, :destroy]
  
  def index
    @stock = Inventory.new
    @stocks = current_user.inventories.where(arrived: nil).order(created_at: :desc)
  end
  def create
    @stock = current_user.inventories.build(stock_params)
    if @stock.save
      redirect_to inventories_path
    else
      render 'new'
    end
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
  def arrived
    @stocks = Inventory.find(params[:stock_ids])
      @stocks.each do |stock|
        stock.update_attribute(:arrived,1)
      end
      #render inventory_path(current_user)
  end
  
  def arrived_list
      @stocks = current_user.inventories.where.not(arrived: nil).order(created_at: :desc)
      render 'index'
  end
      private
  def stock_params
    params.require(:inventory).permit(:jan, :volume,:total_price,:asin,:shipfee,:price)
  end
  def set_stock
    @stock = Inventory.find(params[:id])
  end
end