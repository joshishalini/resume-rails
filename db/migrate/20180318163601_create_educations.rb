class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.float :per
      t.string :year
      t.string :type

      t.timestamps
    end
  end
end
