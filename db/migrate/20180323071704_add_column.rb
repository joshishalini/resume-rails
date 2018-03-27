class AddColumn < ActiveRecord::Migration[5.0]
  def change
  	add_column :projects, :user_id, :integer
  	add_column :experiences, :user_id, :integer
  end
end
