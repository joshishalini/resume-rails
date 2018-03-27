class ChangePerFormatInEducations < ActiveRecord::Migration[5.0]
  def change
  	change_column :educations, :per, :string
  end
end
