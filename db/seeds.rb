# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# coding: utf-8

Order.create(:order_id => '403-7192700-3218754', :sku => '201510190a', :sold_price => 45.05, :fee =>-7.97)
Order.create(:order_id => '304-1805260-6246722', :sku => '201510220g', :sold_price => 29.3, :fee =>-5.14)
Order.create(:order_id => '304-6724465-0383547', :sku => '201510220L', :sold_price => 8.38, :fee =>-3.87)
