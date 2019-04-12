class CreateOrderHistories < ActiveRecord::Migration
  def change
    create_table :order_histories do |t|
      t.string :txn_id
      t.string :charge_id
      t.string :cart_id
      t.integer :total_ammount

      t.timestamps null: false
    end
  end
end
