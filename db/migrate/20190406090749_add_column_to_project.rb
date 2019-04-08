class AddColumnToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :project, :string
  	add_column :projects,:name, :string
  	add_column :projects, :phone, :string
  	add_column :projects, :company, :string
  	add_column :projects, :completed, :string
  	add_column :projects, :task, :integer
   	add_column :projects, :date, :datetime
  	add_column :projects, :action, :boolean
  end
end
