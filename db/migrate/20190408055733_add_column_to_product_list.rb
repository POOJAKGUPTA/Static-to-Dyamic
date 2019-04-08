class AddColumnToProductList < ActiveRecord::Migration
  def change
  	add_column :product_lists, :product_name, :string
  	add_column :product_lists,:model, :string
  	add_column :product_lists, :price, :integer
  	add_column :product_lists, :quantity, :integer
  	add_column :product_lists, :status, :string
  	add_column :product_lists, :action, :string
   	
  end
end


