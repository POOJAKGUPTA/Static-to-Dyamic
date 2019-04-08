class AddColumnToProductlist < ActiveRecord::Migration
  def change
    add_column :product_lists, :description, :text
  end
end
