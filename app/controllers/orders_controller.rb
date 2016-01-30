class OrdersController < ApplicationController
    before_action :logged_in_user
    def index
        @orders = current_user.orders.where(shipfee: nil).order(created_at: :desc)
        @shipped_orders = current_user.orders.where.not(shipfee: nil).order(created_at: :desc)
    end
    
    def update_all
        @orders = Order.find(params[:order_ids])
        @shipping_fee = params[:shipping_fee]
        if params[:shipping_way] == '小型SAL'
            @total_weight = 0
            @orders.each do |order|
                #binding.pry
                sku = order.sku
                weight = Asin.find_by(sku:sku).weight
                @total_weight += weight.to_i
            end
            @orders.each do |order|
                sku = order.sku
                weight = Asin.find_by(sku:sku).weight                
                shipping_fee = @shipping_fee.to_i*weight.to_i/@total_weight.to_i
                order.update_attribute(:shipfee,shipping_fee)
            end
            redirect_to orders_path
        elsif params[:shiping_way] == 'SAL'
        elsif params[:shiping_way] == 'Pメール'
        elsif params[:shiping_way] == 'Dメール'
        else
        end
            
            
            
            
        puts params[:orders]
        puts "!!!!!!!!!!!!!!!!!"
    end
end
