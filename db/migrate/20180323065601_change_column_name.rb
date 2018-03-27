class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :educations, :type, :education
  	add_column :educations, :user_id, :integer
  end
end
