class AddColumnToProductlists < ActiveRecord::Migration
  def change
  	    add_column :product_lists, :image, :string

  end
end
