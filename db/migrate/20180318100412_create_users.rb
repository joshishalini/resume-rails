class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.text :obj
      t.string :father
      t.string :mother
      t.string :dob
      t.string :gender
      t.string :hobbies
      t.string :strenght

      t.timestamps
    end
  end
end
