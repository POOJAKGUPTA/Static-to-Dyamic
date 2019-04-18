class CreateWishlistItems < ActiveRecord::Migration
  def change
    create_table :wishlist_items do |t|
      t.integer :product_id
      t.integer :wishlist_id
      t.integer :price
      t.integer :quantity
      t.string :dummy

      t.timestamps null: false
    end
  end
end
