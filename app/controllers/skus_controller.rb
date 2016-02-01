class SkusController < ApplicationController
  def index
    @sku = Sku.new
    @skus = Sku.all
=begin
      respond_to do |format|
        format.html
        format.xlsx do
          generate_xlsx
        end
      end
=end
  end
private
=begin
def generate_xlsx
  Axlsx::Package.new do |p|
    p.workbook.add_worksheet(name: "シート名") do |sheet|      
      sheet.add_row ["First Column", "Second", "Third"]
      sheet.add_row [1, 2, 3]
    end
    send_data(p.to_stream.read,
              type: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
              filename: "sample.xlsx")
end 
en
=end
end
