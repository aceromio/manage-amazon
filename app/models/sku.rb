class Sku < ActiveRecord::Base
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << csv_column_names
      all.each do |product|
        csv << product.csv_column_values
      end
    end
  end
end
