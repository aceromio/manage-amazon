class AsinsController < ApplicationController
  before_action :set_asin, only: [:edit, :update, :destroy]
  def index
    @asin = Asin.new
    @asins = Asin.all
  end
  def create
    @asin = current_user.asins.build(asin_params)
    if @asin.save
      redirect_to asins_path
    else
      render 'new'
    end
  end
  def edit
  end
  def update
    if @asin.update(asin_params)
      redirect_to asins_path , notice: '編集ました'
    else
      render 'edit'
    end
  end
      private
  def asin_params
    params.require(:asin).permit(:jan, :asin,:weight,:height,:width,:length)
  end
  def set_asin
    @asin = Asin.find(params[:id])
  end
end
