class SkusController < ApplicationController
  def index
    @sku = Sku.new
    @skus = Sku.all
    
    respond_to do |format|
      format.html
      format.xls { send_data @sku.to_csv(col_sep: "\t") }
    end
  end
end
