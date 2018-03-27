class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :comp_name
      t.string :designation
      t.string :from
      t.string :to

      t.timestamps
    end
  end
end
