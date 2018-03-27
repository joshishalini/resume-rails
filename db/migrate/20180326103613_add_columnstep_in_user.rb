class AddColumnstepInUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :step, :integer, default: "0"
  end
end
