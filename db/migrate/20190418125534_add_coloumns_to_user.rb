class AddColoumnsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string
  	add_column :users,:last_name, :string
  	add_column :users, :phone, :integer
  	add_column :users, :company, :string
  	add_column :users, :permanent_address, :string
  	add_column :users, :current_address, :string
  	add_column :users, :about, :text
   	add_column :users, :role, :string
		add_column :users, :image, :string
  end
end
