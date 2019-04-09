class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.integer :order_id
      t.boolean :is_ordered, default: false


      t.timestamps null: false
    end
  end
end
