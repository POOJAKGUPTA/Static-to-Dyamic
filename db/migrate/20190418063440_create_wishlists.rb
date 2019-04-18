class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.integer :user_id
      t.boolean :is_ordered
      t.integer :order_id
      t.string :dummy

      t.timestamps null: false
    end
  end
end
